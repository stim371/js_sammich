class SandwichOrder < ActiveRecord::Base
  attr_accessible :ordering_person, :sandwich_type, :sandwich_maker
  SANDWICH_TYPES = ["Meat", "Veggie", "Vegan", "Other"]
  
  validates :ordering_person, :presence => true
  validates :sandwich_maker, :presence => true
  validates :sandwich_type, :inclusion => { :in => SANDWICH_TYPES }
  
end
