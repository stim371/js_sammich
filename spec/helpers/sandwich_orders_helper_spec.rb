require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the SandwichOrdersHelper. For example:
#
# describe SandwichOrdersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe SandwichOrdersHelper do
  context "when building the copyright notice" do
    it "should show the current year" do
      this_year.should eq Time.new.year
    end
  end
end
