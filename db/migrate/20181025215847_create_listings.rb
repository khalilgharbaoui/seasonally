class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.decimal :default_daily_rate

      t.timestamps
    end
  end
end
