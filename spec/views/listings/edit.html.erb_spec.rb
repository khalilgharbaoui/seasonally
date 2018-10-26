require 'rails_helper'

RSpec.describe "listings/edit", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      :id => "MyString",
      :title => "MyString",
      :default_daily_rate => "MyString",
      :average_daily_rate => "MyString",
      :rate => "MyString"
    ))
  end

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do

      assert_select "input[name=?]", "listing[id]"

      assert_select "input[name=?]", "listing[title]"

      assert_select "input[name=?]", "listing[default_daily_rate]"

      assert_select "input[name=?]", "listing[average_daily_rate]"

      assert_select "input[name=?]", "listing[rate]"
    end
  end
end
