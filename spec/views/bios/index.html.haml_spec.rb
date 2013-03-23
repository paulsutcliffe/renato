require 'spec_helper'

describe "bios/index" do
  before(:each) do
    assign(:bios, [
      stub_model(Bio,
        :biografia => "MyText"
      ),
      stub_model(Bio,
        :biografia => "MyText"
      )
    ])
  end

  it "renders a list of bios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
