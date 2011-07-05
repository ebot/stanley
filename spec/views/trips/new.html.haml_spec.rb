require 'spec_helper'

describe "trips/new.html.haml" do
  before(:each) do
    assign(:trip, stub_model(Trip,
      :location => "MyString",
      :image => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new trip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trips_path, :method => "post" do
      assert_select "input#trip_location", :name => "trip[location]"
      assert_select "input#trip_image", :name => "trip[image]"
      assert_select "textarea#trip_description", :name => "trip[description]"
    end
  end
end
