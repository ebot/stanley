require 'spec_helper'

describe "trips/index.html.haml" do
  before(:each) do
    assign(:trips, [
      stub_model(Trip,
        :location => "Location",
        :image => "Image",
        :description => "MyText"
      ),
      stub_model(Trip,
        :location => "Location",
        :image => "Image",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of trips" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
