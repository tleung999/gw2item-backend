class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.integer :data_id
      t.string :name
      t.integer :rarity
      t.integer :restriction_level
      t.string :img
      t.integer :type_id
      t.integer :sub_type_id
      t.date :price_last_changed
      t.integer :max_offer_unit_price
      t.integer :min_sale_unit_price
      t.integer :offer_availability
      t.integer :sale_availability
      t.integer :sale_price_change_last_hour
      t.integer :offer_price_change_last_hour
      t.integer :profit_margin
      t.timestamps
    end
  end
end
