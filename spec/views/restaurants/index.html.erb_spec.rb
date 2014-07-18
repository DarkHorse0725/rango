require 'spec_helper'

describe "restaurants/index" do
  before(:each) do
    assign(:restaurants, [
      stub_model(Restaurant,
        :name => "Name",
        :price => 1.5,
        :latitude => 1.5,
        :longitude => 1.5
      ),
      stub_model(Restaurant,
        :name => "Name",
        :price => 1.5,
        :latitude => 1.5,
        :longitude => 1.5
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end