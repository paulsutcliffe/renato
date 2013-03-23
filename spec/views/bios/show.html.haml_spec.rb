require 'spec_helper'

describe "bios/show" do
  before(:each) do
    @bio = assign(:bio, stub_model(Bio,
      :biografia => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
