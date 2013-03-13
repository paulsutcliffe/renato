require 'spec_helper'

describe "albumes/edit" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :nombre => "MyString",
      :cliente_id => 1
    ))
  end

  it "renders the edit album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", album_path(@album), "post" do
      assert_select "input#album_nombre[name=?]", "album[nombre]"
      assert_select "input#album_cliente_id[name=?]", "album[cliente_id]"
    end
  end
end
