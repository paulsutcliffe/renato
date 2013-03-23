require 'spec_helper'

describe "information/index" do
  before(:each) do
    assign(:information, [
      stub_model(Information,
        :biografia => "MyText",
        :telefono => "Telefono",
        :email => "Email",
        :facebook => "Facebook",
        :twitter => "Twitter"
      ),
      stub_model(Information,
        :biografia => "MyText",
        :telefono => "Telefono",
        :email => "Email",
        :facebook => "Facebook",
        :twitter => "Twitter"
      )
    ])
  end

  it "renders a list of information" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
  end
end
