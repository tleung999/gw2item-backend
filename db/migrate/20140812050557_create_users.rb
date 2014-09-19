class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :first_name, :last_name, :character_name, :character_gender
      t.string :password_hash
      t.timestamps
    end
  end
end
