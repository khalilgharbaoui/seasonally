class CreateSeasonalRates < ActiveRecord::Migration[5.2]
  def change
    create_table :seasonal_rates do |t|
      t.references :listing, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :daily_rate

      t.timestamps
    end
  end
end
