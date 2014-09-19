class CreateSubtypes < ActiveRecord::Migration
  def change
    create_table :subtypes do |t|
      t.string :name
      t.integer :subtype_id
      t.timestamps
      t.belongs_to :type
    end
  end
end
