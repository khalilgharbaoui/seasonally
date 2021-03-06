# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
1001.times.each do |n|
  Listing.create!(title: "camper#{n+1}", default_daily_rate: 100 + n)
  SeasonalRate.create!(listing_id: n+1, start_date: DateTime.new(2018,7,1),
                                        end_date: DateTime.new(2018,9,1),
                                        daily_rate: 150 + n)
end
