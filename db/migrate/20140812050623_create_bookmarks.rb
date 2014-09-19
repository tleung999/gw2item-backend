class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.belongs_to :user
      t.belongs_to :weapon
      t.timestamps
    end
  end
end
