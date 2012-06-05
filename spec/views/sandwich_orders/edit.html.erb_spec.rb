require 'spec_helper'

describe "sandwich_orders/edit" do
  before(:each) do
    @sandwich_order = assign(:sandwich_order, stub_model(SandwichOrder,
      :ordering_person => "MyString",
      :sandwich_type => "MyString"
    ))
  end

  it "renders the edit sandwich_order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sandwich_orders_path(@sandwich_order), :method => "post" do
      assert_select "input#sandwich_order_ordering_person", :name => "sandwich_order[ordering_person]"
      assert_select "input#sandwich_order_sandwich_type", :name => "sandwich_order[sandwich_type]"
    end
  end
end
