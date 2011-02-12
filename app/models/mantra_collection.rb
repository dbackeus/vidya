class MantraCollection
  include Mongoid::Document

  field :title, :type => String

  embeds_many :mantras
  
  validates_presence_of :title
  
  accepts_nested_attributes_for :mantras
  
  before_validation :clean_empty_mantras
  
  private
  def clean_empty_mantras
    mantras.each { |mantra| mantra.delete if mantra.original.blank? }
    mantras.delete_if { |mantra| mantra.original.blank? }
  end
end
