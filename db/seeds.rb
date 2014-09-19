# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json'
require 'pathname'

# read in rarity json
json = File.read('./db/rarities.json')
obj = JSON.parse(json)
rarity_data = obj["results"]
rarity_data.each do |rarity|
  Rare.create(:name => rarity["name"], :rare_id => rarity["id"])
end

# read in main type
json = File.read('./db/types.json')
obj = JSON.parse(json)
types_data = obj["results"]
types_data.each do |type|
  Type.create(:id => type["id"], :name => type["name"])
end

# read in subtype
types_data.each do |type|
  subtype_data = type["subtypes"]
  subtype_data.each do |subtype|
    Subtype.create(:name => subtype["name"], :subtype_id => subtype["id"], :type_id => type["id"])
  end
end
