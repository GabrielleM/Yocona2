require "spec_helper"

describe RiversController do
  describe "routing" do

    it "routes to #index" do
      get("/rivers").should route_to("rivers#index")
    end

    it "routes to #new" do
      get("/rivers/new").should route_to("rivers#new")
    end

    it "routes to #show" do
      get("/rivers/1").should route_to("rivers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rivers/1/edit").should route_to("rivers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rivers").should route_to("rivers#create")
    end

    it "routes to #update" do
      put("/rivers/1").should route_to("rivers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rivers/1").should route_to("rivers#destroy", :id => "1")
    end

  end
end
