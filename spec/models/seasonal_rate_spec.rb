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

require 'rails_helper'

RSpec.describe SeasonalRate, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
