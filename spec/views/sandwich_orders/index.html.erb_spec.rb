require 'spec_helper'

describe "sandwich_orders/index" do
  before(:each) do
    assign(:sandwich_orders, [
      stub_model(SandwichOrder,
        :ordering_person => "Ordering Person",
        :sandwich_type => "Sandwich Type"
      ),
      stub_model(SandwichOrder,
        :ordering_person => "Ordering Person",
        :sandwich_type => "Sandwich Type"
      )
    ])
  end

  it "renders a list of sandwich_orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ordering Person".to_s, :count => 2
    assert_select "tr>td", :text => "Sandwich Type".to_s, :count => 2
  end
end
