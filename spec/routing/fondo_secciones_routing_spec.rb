require "spec_helper"

describe FondoSeccionesController do
  describe "routing" do

    it "routes to #index" do
      get("/fondo_secciones").should route_to("fondo_secciones#index")
    end

    it "routes to #new" do
      get("/fondo_secciones/new").should route_to("fondo_secciones#new")
    end

    it "routes to #show" do
      get("/fondo_secciones/1").should route_to("fondo_secciones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fondo_secciones/1/edit").should route_to("fondo_secciones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fondo_secciones").should route_to("fondo_secciones#create")
    end

    it "routes to #update" do
      put("/fondo_secciones/1").should route_to("fondo_secciones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fondo_secciones/1").should route_to("fondo_secciones#destroy", :id => "1")
    end

  end
end
