# == Schema Information
#
# Table name: listings
#
#  id                 :bigint(8)        not null, primary key
#  default_daily_rate :decimal(, )
#  title              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Listing < ApplicationRecord
end
