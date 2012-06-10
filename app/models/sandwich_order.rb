class SandwichOrder < ActiveRecord::Base
  attr_accessible :ordering_person, :sandwich_type, :sandwich_maker, :other_sandwich
  SANDWICH_TYPES = ["Meat", "Veggie", "Vegan", "Other"]
  
  validates :ordering_person, :presence => true
  validates :sandwich_maker, :presence => true
  validates :sandwich_type, :inclusion => { :in => SANDWICH_TYPES }
  validates :other_sandwich, :presence => true, :if => :other_sandwich?
  
  def other_sandwich?
    sandwich_type == "Other"
  end
end
