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

ActiveRecord::Schema.define(version: 2018_08_12_213227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ratings", force: :cascade do |t|
    t.integer "stadium"
    t.integer "atmosphere"
    t.integer "concessions"
    t.integer "extras"
    t.integer "fans"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "game_number"
    t.string "scheduled"
    t.string "home_team"
    t.string "away_team"
    t.boolean "double_header"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "venue_name"
    t.string "venue_address"
    t.string "venue_city"
    t.string "venue_state"
    t.string "venue_zip"
  end

  create_table "stadia", force: :cascade do |t|
    t.string "name"
    t.string "market"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "stadium_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "team_name"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "stadium_id"
    t.integer "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
