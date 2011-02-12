# encoding: UTF-8

class Mantra
  include Mongoid::Document
  
  embedded_in :mantra_collection
  
  field :original, :type => String
  field :english, :type => String
  
  validates_presence_of :original
  
  def original=(sanskrit)
    write_attribute(:original, sanskrit.gsub("AA", "Ā").gsub("aa", "ā").gsub("II", "Ī").gsub("ii", "ī").gsub("UU", "Ū").gsub("uu", "ū").gsub("NNN", "Ṅ").gsub("nnn", "ṅ"))
  end
end
