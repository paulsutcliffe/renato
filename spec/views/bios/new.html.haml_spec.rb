require 'spec_helper'

describe "bios/new" do
  before(:each) do
    assign(:bio, stub_model(Bio,
      :biografia => "MyText"
    ).as_new_record)
  end

  it "renders new bio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bios_path, "post" do
      assert_select "textarea#bio_biografia[name=?]", "bio[biografia]"
    end
  end
end
