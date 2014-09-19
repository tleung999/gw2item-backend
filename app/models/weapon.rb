class Weapon < ActiveRecord::Base
  has_many :bookmarks
  has_many :Users, through: :bookmarks
end
