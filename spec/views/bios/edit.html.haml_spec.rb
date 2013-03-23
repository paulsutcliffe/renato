require 'spec_helper'

describe "bios/edit" do
  before(:each) do
    @bio = assign(:bio, stub_model(Bio,
      :biografia => "MyText"
    ))
  end

  it "renders the edit bio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bio_path(@bio), "post" do
      assert_select "textarea#bio_biografia[name=?]", "bio[biografia]"
    end
  end
end
