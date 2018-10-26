require 'rails_helper'

RSpec.describe 'RateIndicator.total' do
  # Example scenario
  # camper1 = FactoryBot.build(:listing, title: 'camper1',
  #                             default_daily_rate: 100)

  # camper1_seasonal_rate = FactoryBot.build(:seasonal_rate, listing: camper1,
  #                                       start_date: DateTime.new(2018,07,01),
  #                                       start_date: DateTime.new(2018,09,01),
  #                                       daily_rate: 150)
  before(:all) do
    @listing = FactoryBot.build(:listing)
    FactoryBot.build(:seasonal_rate,listing: @listing)
  end
  describe "calculates total if date_range is" do
    it "IN default_daily_rate period" do
      # Case 1: 2018-05-01​​ ​->​ ​​2018-05-10
      date_range = DateTime.new(2018,5,1)...DateTime.new(2018,5,10)
      total = RateIndicator.total(@listing, date_range.first, date_range.last)
      expect(total).to eq(BigDecimal(900))
    end

    it "OUTSIDE default_daily_rate period" do
      # Case 2: 2018-08-01​​ ​->​ ​​2018-08-10
      date_range = DateTime.new(2018,8,1)...DateTime.new(2018,8,10)
      total = RateIndicator.total(@listing, date_range.first, date_range.last)
      expect(total).to eq(BigDecimal(1350))
    end

    it "IN and OUTISDE of the default_daily_rate AND/OR seasonal_rate period" do
      # Case 3: 2018-06-30​​ ​->​ ​​2018-07-09
      date_range = DateTime.new(2018,6,30)...DateTime.new(2018,7,9)
      total = RateIndicator.total(@listing, date_range.first, date_range.last)
      expect(total).to eq(BigDecimal(1300))
    end
  end
end

