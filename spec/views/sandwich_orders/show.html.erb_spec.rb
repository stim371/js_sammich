require 'spec_helper'

describe "sandwich_orders/show" do
  before(:each) do
    @sandwich_order = assign(:sandwich_order, stub_model(SandwichOrder,
      :ordering_person => "Ordering Person",
      :sandwich_type => "Sandwich Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ordering Person/)
    rendered.should match(/Sandwich Type/)
  end
end
