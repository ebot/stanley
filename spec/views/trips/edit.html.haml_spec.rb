require 'spec_helper'

describe "trips/edit.html.haml" do
  before(:each) do
    @trip = assign(:trip, stub_model(Trip,
      :location => "MyString",
      :image => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit trip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trips_path(@trip), :method => "post" do
      assert_select "input#trip_location", :name => "trip[location]"
      assert_select "input#trip_image", :name => "trip[image]"
      assert_select "textarea#trip_description", :name => "trip[description]"
    end
  end
end
