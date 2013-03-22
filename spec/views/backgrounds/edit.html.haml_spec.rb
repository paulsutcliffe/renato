require 'spec_helper'

describe "backgrounds/edit" do
  before(:each) do
    @background = assign(:background, stub_model(Background))
  end

  it "renders the edit background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", background_path(@background), "post" do
    end
  end
end
