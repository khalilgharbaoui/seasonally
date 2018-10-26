require 'rails_helper'

RSpec.describe "listings/show", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      :id => "Id",
      :title => "Title",
      :default_daily_rate => "Default Daily Rate",
      :average_daily_rate => "Average Daily Rate",
      :rate => "Rate"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Id/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Default Daily Rate/)
    expect(rendered).to match(/Average Daily Rate/)
    expect(rendered).to match(/Rate/)
  end
end
