module ListingHelper
  def rate(listing, start_date, end_date)
    RateIndicator.total(listing, start_date, end_date)
  end
  def average(listing, start_date, end_date)
    RateIndicator.average(listing, start_date, end_date)
  end
end
