require 'spec_helper'

describe "fondo_secciones/index" do
  before(:each) do
    assign(:fondo_secciones, [
      stub_model(FondoSeccion,
        :title => "Title",
        :slug => "Slug"
      ),
      stub_model(FondoSeccion,
        :title => "Title",
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of fondo_secciones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
