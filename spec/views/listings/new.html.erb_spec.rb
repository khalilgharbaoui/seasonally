require 'rails_helper'

RSpec.describe "listings/new", type: :view do
  before(:each) do
    assign(:listing, Listing.new(
      :id => "MyString",
      :title => "MyString",
      :default_daily_rate => "MyString",
      :average_daily_rate => "MyString",
      :rate => "MyString"
    ))
  end

  it "renders new listing form" do
    render

    assert_select "form[action=?][method=?]", listings_path, "post" do

      assert_select "input[name=?]", "listing[id]"

      assert_select "input[name=?]", "listing[title]"

      assert_select "input[name=?]", "listing[default_daily_rate]"

      assert_select "input[name=?]", "listing[average_daily_rate]"

      assert_select "input[name=?]", "listing[rate]"
    end
  end
end
