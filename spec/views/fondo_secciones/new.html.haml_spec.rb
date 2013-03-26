require 'spec_helper'

describe "fondo_secciones/new" do
  before(:each) do
    assign(:fondo_seccion, stub_model(FondoSeccion,
      :title => "MyString",
      :slug => "MyString"
    ).as_new_record)
  end

  it "renders new fondo_seccion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fondo_secciones_path, "post" do
      assert_select "input#fondo_seccion_title[name=?]", "fondo_seccion[title]"
      assert_select "input#fondo_seccion_slug[name=?]", "fondo_seccion[slug]"
    end
  end
end
