require 'spec_helper'

describe "fotos/index" do
  before(:each) do
    assign(:fotos, [
      stub_model(Foto,
        :titulo => "Titulo",
        :publico => false,
        :album_id => 1,
        :categoria_id => 2
      ),
      stub_model(Foto,
        :titulo => "Titulo",
        :publico => false,
        :album_id => 1,
        :categoria_id => 2
      )
    ])
  end

  it "renders a list of fotos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
