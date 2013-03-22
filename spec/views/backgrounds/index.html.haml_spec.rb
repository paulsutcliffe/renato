require 'spec_helper'

describe "backgrounds/index" do
  before(:each) do
    assign(:backgrounds, [
      stub_model(Background),
      stub_model(Background)
    ])
  end

  it "renders a list of backgrounds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
