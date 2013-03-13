require 'spec_helper'

describe "contactos/edit" do
  before(:each) do
    @contacto = assign(:contacto, stub_model(Contacto,
      :nombre => "MyString",
      :apellido => "MyString",
      :email => "MyString",
      :telefono => "MyString",
      :comentario => "MyText"
    ))
  end

  it "renders the edit contacto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contacto_path(@contacto), "post" do
      assert_select "input#contacto_nombre[name=?]", "contacto[nombre]"
      assert_select "input#contacto_apellido[name=?]", "contacto[apellido]"
      assert_select "input#contacto_email[name=?]", "contacto[email]"
      assert_select "input#contacto_telefono[name=?]", "contacto[telefono]"
      assert_select "textarea#contacto_comentario[name=?]", "contacto[comentario]"
    end
  end
end
