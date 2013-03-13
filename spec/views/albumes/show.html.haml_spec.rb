require 'spec_helper'

describe "albumes/show" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :nombre => "Nombre",
      :cliente_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/1/)
  end
end
