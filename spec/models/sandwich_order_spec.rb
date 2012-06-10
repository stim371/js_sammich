require 'spec_helper'

describe SandwichOrder do
  context "when not entering all require criteria" do
    it "should not save without a sandwich type" do
      subject.ordering_person = "Joel"
      subject.sandwich_maker = "Chef"
      subject.should_not be_valid
    end
  
    it "should not save without an ordering person" do
      subject.sandwich_type = "Meat"
      subject.sandwich_maker = "Chef"
      subject.should_not be_valid
    end
  
    it "should not save without a sandwich maker" do
      subject.ordering_person = "Joel"
      subject.sandwich_type = "Veggie"
      subject.should_not be_valid
    end
  end

  it "should not save without a URL if the sandwich type is Other" do
    subject.ordering_person = "Joel"
    subject.sandwich_type = "Other"
    subject.other_sandwich = ""
    subject.sandwich_maker = "Chef"
    subject.should_not be_valid
  end

  context "when all required fields are filled" do
    it "should save with all values filled in" do
      subject.ordering_person = "Joel"
      subject.sandwich_type = "Meat"
      subject.sandwich_maker = "Chef"
      subject.should be_valid
    end
    
    it "should save if the sandwich type is Other with a URL" do
      subject.ordering_person = "Joel"
      subject.sandwich_type = "Other"
      subject.other_sandwich = "myfancysammich.com"
      subject.sandwich_maker = "Chef"
      subject.should be_valid
    end
  end
end
