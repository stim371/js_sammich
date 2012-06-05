require 'spec_helper'

describe SandwichOrder do
  it "should not save without a sandwich type" do
    subject.ordering_person = "Joel"
    subject.sandwich_maker = "Chef"
    subject.should_not be_valid
  end
  
  it "should not save without an ordering person"
  
  it "should not save without a sandwich maker"
end
