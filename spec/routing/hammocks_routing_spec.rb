require "spec_helper"

describe HammocksController do
  describe "routing" do

    it "routes to #index" do
      get("/hammocks").should route_to("hammocks#index")
    end

    it "routes to #new" do
      get("/hammocks/new").should route_to("hammocks#new")
    end

    it "routes to #show" do
      get("/hammocks/1").should route_to("hammocks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hammocks/1/edit").should route_to("hammocks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hammocks").should route_to("hammocks#create")
    end

    it "routes to #update" do
      put("/hammocks/1").should route_to("hammocks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hammocks/1").should route_to("hammocks#destroy", :id => "1")
    end

  end
end
