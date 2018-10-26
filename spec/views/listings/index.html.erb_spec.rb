require 'rails_helper'

RSpec.describe "listings/index", type: :view do
  before(:each) do
    assign(:listings, [
      Listing.create!(
        :id => "Id",
        :title => "Title",
        :default_daily_rate => "Default Daily Rate",
        :average_daily_rate => "Average Daily Rate",
        :rate => "Rate"
      ),
      Listing.create!(
        :id => "Id",
        :title => "Title",
        :default_daily_rate => "Default Daily Rate",
        :average_daily_rate => "Average Daily Rate",
        :rate => "Rate"
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Default Daily Rate".to_s, :count => 2
    assert_select "tr>td", :text => "Average Daily Rate".to_s, :count => 2
    assert_select "tr>td", :text => "Rate".to_s, :count => 2
  end
end
