require "spec_helper"

describe BlocsController do
  describe "routing" do

    it "routes to #index" do
      get("/blocs").should route_to("blocs#index")
    end

    it "routes to #new" do
      get("/blocs/new").should route_to("blocs#new")
    end

    it "routes to #show" do
      get("/blocs/1").should route_to("blocs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blocs/1/edit").should route_to("blocs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blocs").should route_to("blocs#create")
    end

    it "routes to #update" do
      put("/blocs/1").should route_to("blocs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blocs/1").should route_to("blocs#destroy", :id => "1")
    end

  end
end
