# == Schema Information
#
# Table name: seasonal_rates
#
#  id         :bigint(8)        not null, primary key
#  daily_rate :decimal(, )
#  end_date   :string
#  start_date :string
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

class SeasonalRate < ApplicationRecord
  belongs_to :listing
end
