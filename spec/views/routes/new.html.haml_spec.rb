require 'spec_helper'

describe "routes/new.html.haml" do
  before(:each) do
    assign(:route, stub_model(Route,
      :route_id => "MyString",
      :route_name => "MyString",
      :default_driver_id => "MyString",
      :driver_message => "MyString",
      :d_user => "MyString",
      :terminal => "MyString"
    ).as_new_record)
  end

  it "renders new route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => routes_path, :method => "post" do
      assert_select "input#route_route_id", :name => "route[route_id]"
      assert_select "input#route_route_name", :name => "route[route_name]"
      assert_select "input#route_default_driver_id", :name => "route[default_driver_id]"
      assert_select "input#route_driver_message", :name => "route[driver_message]"
      assert_select "input#route_d_user", :name => "route[d_user]"
      assert_select "input#route_terminal", :name => "route[terminal]"
    end
  end
end
