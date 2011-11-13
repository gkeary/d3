require 'spec_helper'

describe "routes/show.html.haml" do
  before(:each) do
    @route = assign(:route, stub_model(Route,
      :route_id => "Route",
      :route_name => "Route Name",
      :default_driver_id => "Default Driver",
      :driver_message => "Driver Message",
      :d_user => "D User",
      :terminal => "Terminal"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Route/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Route Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Default Driver/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Driver Message/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/D User/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Terminal/)
  end
end
