require 'spec_helper'

describe "fondo_secciones/edit" do
  before(:each) do
    @fondo_seccion = assign(:fondo_seccion, stub_model(FondoSeccion,
      :title => "MyString",
      :slug => "MyString"
    ))
  end

  it "renders the edit fondo_seccion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fondo_seccion_path(@fondo_seccion), "post" do
      assert_select "input#fondo_seccion_title[name=?]", "fondo_seccion[title]"
      assert_select "input#fondo_seccion_slug[name=?]", "fondo_seccion[slug]"
    end
  end
end
