# == Schema Information
#
# Table name: seasonal_rates
#
#  id         :bigint(8)        not null, primary key
#  daily_rate :decimal(, )
#  end_date   :datetime
#  start_date :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  listing_id :bigint(8)
#
# Indexes
#
#  index_seasonal_rates_on_listing_id  (listing_id)
#
# Foreign Keys
#
#  fk_rails_...  (listing_id => listings.id)
#

FactoryBot.define do
  factory :seasonal_rate do
    listing { 1111 }
    start_date { DateTime.new(2018,07,01) }
    end_date { DateTime.new(2018,9,1) }
    daily_rate { "150.00" }
  end
end
