class CreateRares < ActiveRecord::Migration
  def change
    create_table :rares do |t|
      t.integer :rare_id
      t.string  :name
      t.timestamps
    end
  end
end
