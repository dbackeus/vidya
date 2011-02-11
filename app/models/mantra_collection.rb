class MantraCollection
  include Mongoid::Document

  field :title, :type => String

  embeds_many :mantras
  
  accepts_nested_attributes_for :mantras
end
