FactoryBot.define do
  factory :seasonal_rate do
    listing { 1111 }
    start_date { DateTime.new(2018,07,01) }
    end_date { DateTime.new(2018,9,1) }
    daily_rate { "150.00" }
  end
end
