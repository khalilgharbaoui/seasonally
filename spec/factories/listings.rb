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

FactoryBot.define do
  factory :listing do
    id { 1111 }
    title { "camper1" }
    default_daily_rate { "100" }
  end
end
