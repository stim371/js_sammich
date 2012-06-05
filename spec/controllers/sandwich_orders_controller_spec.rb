require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SandwichOrdersController do

  # This should return the minimal set of attributes required to create a valid
  # SandwichOrder. As you add validations to SandwichOrder, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {
      :sandwich_type => "Meat",
      :sandwich_maker => "Chef",
      :ordering_person => "Joel"
    }
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SandwichOrdersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all sandwich_orders as @sandwich_orders" do
      sandwich_order = SandwichOrder.create! valid_attributes
      get :index, {}, valid_session
      assigns(:sandwich_orders).should eq([sandwich_order])
    end
  end

  describe "GET show" do
    it "assigns the requested sandwich_order as @sandwich_order" do
      sandwich_order = SandwichOrder.create! valid_attributes
      get :show, {:id => sandwich_order.to_param}, valid_session
      assigns(:sandwich_order).should eq(sandwich_order)
    end
  end

  describe "GET new" do
    it "assigns a new sandwich_order as @sandwich_order" do
      get :new, {}, valid_session
      assigns(:sandwich_order).should be_a_new(SandwichOrder)
    end
  end

  describe "GET edit" do
    it "assigns the requested sandwich_order as @sandwich_order" do
      sandwich_order = SandwichOrder.create! valid_attributes
      get :edit, {:id => sandwich_order.to_param}, valid_session
      assigns(:sandwich_order).should eq(sandwich_order)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SandwichOrder" do
        expect {
          post :create, {:sandwich_order => valid_attributes}, valid_session
        }.to change(SandwichOrder, :count).by(1)
      end

      it "assigns a newly created sandwich_order as @sandwich_order" do
        post :create, {:sandwich_order => valid_attributes}, valid_session
        assigns(:sandwich_order).should be_a(SandwichOrder)
        assigns(:sandwich_order).should be_persisted
      end

      it "redirects to the created sandwich_order" do
        post :create, {:sandwich_order => valid_attributes}, valid_session
        response.should redirect_to(SandwichOrder.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sandwich_order as @sandwich_order" do
        # Trigger the behavior that occurs when invalid params are submitted
        SandwichOrder.any_instance.stub(:save).and_return(false)
        post :create, {:sandwich_order => {}}, valid_session
        assigns(:sandwich_order).should be_a_new(SandwichOrder)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SandwichOrder.any_instance.stub(:save).and_return(false)
        post :create, {:sandwich_order => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sandwich_order" do
        sandwich_order = SandwichOrder.create! valid_attributes
        # Assuming there are no other sandwich_orders in the database, this
        # specifies that the SandwichOrder created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SandwichOrder.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => sandwich_order.to_param, :sandwich_order => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested sandwich_order as @sandwich_order" do
        sandwich_order = SandwichOrder.create! valid_attributes
        put :update, {:id => sandwich_order.to_param, :sandwich_order => valid_attributes}, valid_session
        assigns(:sandwich_order).should eq(sandwich_order)
      end

      it "redirects to the sandwich_order" do
        sandwich_order = SandwichOrder.create! valid_attributes
        put :update, {:id => sandwich_order.to_param, :sandwich_order => valid_attributes}, valid_session
        response.should redirect_to(sandwich_order)
      end
    end

    describe "with invalid params" do
      it "assigns the sandwich_order as @sandwich_order" do
        sandwich_order = SandwichOrder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SandwichOrder.any_instance.stub(:save).and_return(false)
        put :update, {:id => sandwich_order.to_param, :sandwich_order => {}}, valid_session
        assigns(:sandwich_order).should eq(sandwich_order)
      end

      it "re-renders the 'edit' template" do
        sandwich_order = SandwichOrder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SandwichOrder.any_instance.stub(:save).and_return(false)
        put :update, {:id => sandwich_order.to_param, :sandwich_order => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sandwich_order" do
      sandwich_order = SandwichOrder.create! valid_attributes
      expect {
        delete :destroy, {:id => sandwich_order.to_param}, valid_session
      }.to change(SandwichOrder, :count).by(-1)
    end

    it "redirects to the sandwich_orders list" do
      sandwich_order = SandwichOrder.create! valid_attributes
      delete :destroy, {:id => sandwich_order.to_param}, valid_session
      response.should redirect_to(sandwich_orders_url)
    end
  end

end
