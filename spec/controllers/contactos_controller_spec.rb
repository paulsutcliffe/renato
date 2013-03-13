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

describe ContactosController do

  # This should return the minimal set of attributes required to create a valid
  # Contacto. As you add validations to Contacto, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "nombre" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContactosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all contactos as @contactos" do
      contacto = Contacto.create! valid_attributes
      get :index, {}, valid_session
      assigns(:contactos).should eq([contacto])
    end
  end

  describe "GET show" do
    it "assigns the requested contacto as @contacto" do
      contacto = Contacto.create! valid_attributes
      get :show, {:id => contacto.to_param}, valid_session
      assigns(:contacto).should eq(contacto)
    end
  end

  describe "GET new" do
    it "assigns a new contacto as @contacto" do
      get :new, {}, valid_session
      assigns(:contacto).should be_a_new(Contacto)
    end
  end

  describe "GET edit" do
    it "assigns the requested contacto as @contacto" do
      contacto = Contacto.create! valid_attributes
      get :edit, {:id => contacto.to_param}, valid_session
      assigns(:contacto).should eq(contacto)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Contacto" do
        expect {
          post :create, {:contacto => valid_attributes}, valid_session
        }.to change(Contacto, :count).by(1)
      end

      it "assigns a newly created contacto as @contacto" do
        post :create, {:contacto => valid_attributes}, valid_session
        assigns(:contacto).should be_a(Contacto)
        assigns(:contacto).should be_persisted
      end

      it "redirects to the created contacto" do
        post :create, {:contacto => valid_attributes}, valid_session
        response.should redirect_to(Contacto.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contacto as @contacto" do
        # Trigger the behavior that occurs when invalid params are submitted
        Contacto.any_instance.stub(:save).and_return(false)
        post :create, {:contacto => { "nombre" => "invalid value" }}, valid_session
        assigns(:contacto).should be_a_new(Contacto)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Contacto.any_instance.stub(:save).and_return(false)
        post :create, {:contacto => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested contacto" do
        contacto = Contacto.create! valid_attributes
        # Assuming there are no other contactos in the database, this
        # specifies that the Contacto created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Contacto.any_instance.should_receive(:update_attributes).with({ "nombre" => "MyString" })
        put :update, {:id => contacto.to_param, :contacto => { "nombre" => "MyString" }}, valid_session
      end

      it "assigns the requested contacto as @contacto" do
        contacto = Contacto.create! valid_attributes
        put :update, {:id => contacto.to_param, :contacto => valid_attributes}, valid_session
        assigns(:contacto).should eq(contacto)
      end

      it "redirects to the contacto" do
        contacto = Contacto.create! valid_attributes
        put :update, {:id => contacto.to_param, :contacto => valid_attributes}, valid_session
        response.should redirect_to(contacto)
      end
    end

    describe "with invalid params" do
      it "assigns the contacto as @contacto" do
        contacto = Contacto.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Contacto.any_instance.stub(:save).and_return(false)
        put :update, {:id => contacto.to_param, :contacto => { "nombre" => "invalid value" }}, valid_session
        assigns(:contacto).should eq(contacto)
      end

      it "re-renders the 'edit' template" do
        contacto = Contacto.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Contacto.any_instance.stub(:save).and_return(false)
        put :update, {:id => contacto.to_param, :contacto => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested contacto" do
      contacto = Contacto.create! valid_attributes
      expect {
        delete :destroy, {:id => contacto.to_param}, valid_session
      }.to change(Contacto, :count).by(-1)
    end

    it "redirects to the contactos list" do
      contacto = Contacto.create! valid_attributes
      delete :destroy, {:id => contacto.to_param}, valid_session
      response.should redirect_to(contactos_url)
    end
  end

end
