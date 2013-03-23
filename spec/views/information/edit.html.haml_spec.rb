require 'spec_helper'

describe "information/edit" do
  before(:each) do
    @information = assign(:information, stub_model(Information,
      :biografia => "MyText",
      :telefono => "MyString",
      :email => "MyString",
      :facebook => "MyString",
      :twitter => "MyString"
    ))
  end

  it "renders the edit information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", information_path(@information), "post" do
      assert_select "textarea#information_biografia[name=?]", "information[biografia]"
      assert_select "input#information_telefono[name=?]", "information[telefono]"
      assert_select "input#information_email[name=?]", "information[email]"
      assert_select "input#information_facebook[name=?]", "information[facebook]"
      assert_select "input#information_twitter[name=?]", "information[twitter]"
    end
  end
end
