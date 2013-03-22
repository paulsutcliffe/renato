require 'spec_helper'

describe "backgrounds/show" do
  before(:each) do
    @background = assign(:background, stub_model(Background))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
