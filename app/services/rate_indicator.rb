class RateIndicator
  attr_reader :listing, :begin_date, :end_date

  def initialize(listing, begin_date, end_date)
    @listing = listing
    @begin_date = begin_date
    @end_date = end_date
  end

  def self.total(listing, begin_date, end_date)
    new(listing, begin_date, end_date).send(:rate)
  end

  def self.average(listing, begin_date, end_date)
    new(listing, begin_date, end_date).send(:daily_avg_rate)
  end

  private

  def rate
    BigDecimal(daily_prices.reduce(:+))
  end

  def daily_avg_rate
    BigDecimal(daily_prices.reduce(:+) / daily_prices.size)
  end

  def daily_prices
    (begin_date...end_date).step(1.day).map do |date|
      within_seasonal_range?(date) ? listing.seasonal_rate.daily_rate : listing.default_daily_rate
    end
  end

  def within_seasonal_range?(date)
    date.between?(listing.seasonal_rate.start_date, listing.seasonal_rate.end_date)
  end
end
