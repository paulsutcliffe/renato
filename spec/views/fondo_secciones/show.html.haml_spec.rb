require 'spec_helper'

describe "fondo_secciones/show" do
  before(:each) do
    @fondo_seccion = assign(:fondo_seccion, stub_model(FondoSeccion,
      :title => "Title",
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Slug/)
  end
end
