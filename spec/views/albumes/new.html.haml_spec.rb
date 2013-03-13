require 'spec_helper'

describe "albumes/new" do
  before(:each) do
    assign(:album, stub_model(Album,
      :nombre => "MyString",
      :cliente_id => 1
    ).as_new_record)
  end

  it "renders new album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", albumes_path, "post" do
      assert_select "input#album_nombre[name=?]", "album[nombre]"
      assert_select "input#album_cliente_id[name=?]", "album[cliente_id]"
    end
  end
end
