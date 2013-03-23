require "spec_helper"

describe BiosController do
  describe "routing" do

    it "routes to #index" do
      get("/bios").should route_to("bios#index")
    end

    it "routes to #new" do
      get("/bios/new").should route_to("bios#new")
    end

    it "routes to #show" do
      get("/bios/1").should route_to("bios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bios/1/edit").should route_to("bios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bios").should route_to("bios#create")
    end

    it "routes to #update" do
      put("/bios/1").should route_to("bios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bios/1").should route_to("bios#destroy", :id => "1")
    end

  end
end
