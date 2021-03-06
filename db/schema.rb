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

ActiveRecord::Schema.define(version: 20160422160455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catches", force: :cascade do |t|
    t.string   "species_common_name"
    t.string   "species_scientific_name"
    t.float    "weight"
    t.integer  "count"
    t.integer  "operation_id"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "market_fish_ticket_type"
    t.string   "market_fish_ticket_number"
  end

  create_table "environments", force: :cascade do |t|
    t.float   "water_temperature"
    t.float    "depth"
    t.float    "dissolved_oxygen_levels"
    t.float    "salinity"
    t.integer  "catch_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "operations", force: :cascade do |t|
    t.string   "nature"
    t.string   "user_name"
    t.string   "user_address"
    t.string   "user_phone_number"
    t.string   "user_email"
    t.string   "user_license"
    t.string   "user_country_of_origin"
    t.string   "vessel_name"
    t.string   "vessel_gear_type"
    t.text     "vessel_characteristics"
    t.string   "dealer_company_number"
    t.string   "dealer_name"
    t.string   "dealer_address"
    t.string   "dealer_country"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.jsonb    "coordinates",            array: true
    t.date     "start_datetime"
    t.date     "end_datetime"
  end

  create_table "specimen", force: :cascade do |t|
    t.integer  "age"
    t.float    "length"
    t.float    "weight"
    t.string   "sex"
    t.string   "maturity"
    t.integer  "catch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
