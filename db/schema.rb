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

ActiveRecord::Schema.define(version: 20201021014001) do

  create_table "club_names", force: :cascade do |t|
    t.string "name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clubs", force: :cascade do |t|
    t.text "activities"
    t.boolean "tcheck"
    t.boolean "scheck"
    t.datetime "tcheck_updated_at"
    t.datetime "scheck_updated_at"
    t.integer "place_id"
    t.integer "club_name_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.integer "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "place_image"
    t.text "memo"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weathers", force: :cascade do |t|
    t.float "temp_max"
    t.float "temp_min"
    t.float "temp_feel"
    t.integer "weather_id"
    t.float "rainfall"
    t.datetime "date"
    t.datetime "aquired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
