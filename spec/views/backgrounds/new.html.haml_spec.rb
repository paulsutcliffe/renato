require 'spec_helper'

describe "backgrounds/new" do
  before(:each) do
    assign(:background, stub_model(Background).as_new_record)
  end

  it "renders new background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", backgrounds_path, "post" do
    end
  end
end
