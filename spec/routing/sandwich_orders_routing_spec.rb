require "spec_helper"

describe SandwichOrdersController do
  describe "routing" do

    it "routes to #index" do
      get("/sandwich_orders").should route_to("sandwich_orders#index")
    end

    it "routes to #new" do
      get("/sandwich_orders/new").should route_to("sandwich_orders#new")
    end

    it "routes to #show" do
      get("/sandwich_orders/1").should route_to("sandwich_orders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sandwich_orders/1/edit").should route_to("sandwich_orders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sandwich_orders").should route_to("sandwich_orders#create")
    end

    it "routes to #update" do
      put("/sandwich_orders/1").should route_to("sandwich_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sandwich_orders/1").should route_to("sandwich_orders#destroy", :id => "1")
    end

  end
end
