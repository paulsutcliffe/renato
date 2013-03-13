require 'spec_helper'

describe "fotos/show" do
  before(:each) do
    @foto = assign(:foto, stub_model(Foto,
      :titulo => "Titulo",
      :publico => false,
      :album_id => 1,
      :categoria_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
