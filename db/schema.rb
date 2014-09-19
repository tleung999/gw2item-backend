# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140812050623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: true do |t|
    t.integer  "user_id"
    t.integer  "weapon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rares", force: true do |t|
    t.integer  "rare_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subtypes", force: true do |t|
    t.string   "name"
    t.integer  "subtype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "type_id"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "character_name"
    t.string   "character_gender"
    t.string   "password_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapons", force: true do |t|
    t.integer  "data_id"
    t.string   "name"
    t.integer  "rarity"
    t.integer  "restriction_level"
    t.string   "img"
    t.integer  "type_id"
    t.integer  "sub_type_id"
    t.date     "price_last_changed"
    t.integer  "max_offer_unit_price"
    t.integer  "min_sale_unit_price"
    t.integer  "offer_availability"
    t.integer  "sale_availability"
    t.integer  "sale_price_change_last_hour"
    t.integer  "offer_price_change_last_hour"
    t.integer  "profit_margin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
