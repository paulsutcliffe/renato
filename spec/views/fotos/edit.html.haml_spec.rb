require 'spec_helper'

describe "fotos/edit" do
  before(:each) do
    @foto = assign(:foto, stub_model(Foto,
      :titulo => "MyString",
      :publico => false,
      :album_id => 1,
      :categoria_id => 1
    ))
  end

  it "renders the edit foto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", foto_path(@foto), "post" do
      assert_select "input#foto_titulo[name=?]", "foto[titulo]"
      assert_select "input#foto_publico[name=?]", "foto[publico]"
      assert_select "input#foto_album_id[name=?]", "foto[album_id]"
      assert_select "input#foto_categoria_id[name=?]", "foto[categoria_id]"
    end
  end
end
