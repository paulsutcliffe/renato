require 'spec_helper'

describe "information/show" do
  before(:each) do
    @information = assign(:information, stub_model(Information,
      :biografia => "MyText",
      :telefono => "Telefono",
      :email => "Email",
      :facebook => "Facebook",
      :twitter => "Twitter"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Telefono/)
    rendered.should match(/Email/)
    rendered.should match(/Facebook/)
    rendered.should match(/Twitter/)
  end
end
