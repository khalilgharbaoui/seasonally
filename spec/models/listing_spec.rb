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

require 'rails_helper'

RSpec.describe Listing, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
