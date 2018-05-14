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

ActiveRecord::Schema.define(version: 20180505054813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arts", force: :cascade do |t|
    t.string   "art_id"
    t.date     "effective_start"
    t.date     "effective_end"
    t.string   "art_name"
    t.string   "art_type"
    t.binary   "image_binary"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "event_places", force: :cascade do |t|
    t.string   "event_place_id"
    t.string   "event_place_name"
    t.string   "event_place_address"
    t.string   "event_place_url"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "event_posting_periods", force: :cascade do |t|
    t.string   "event_id"
    t.date     "effective_start"
    t.date     "effective_end"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_id"
    t.date     "event_date"
    t.time     "event_start_time"
    t.time     "event_end_time"
    t.string   "event_title"
    t.text     "event_content"
    t.integer  "event_fee"
    t.string   "art_id_1"
    t.string   "art_id_2"
    t.text     "remarks"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "reserve_period_id", null: false
    t.time     "effective_start",   null: false
    t.time     "effective_end",     null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question_id"
    t.string   "event_place_id"
    t.text     "question_content"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "reserve_periods", force: :cascade do |t|
    t.string   "reserve_period_id"
    t.string   "event_place_id"
    t.string   "all_day_flg"
    t.time     "reserve_start_time"
    t.time     "reserve_end_time"
    t.integer  "reserve_limited_number"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "reserves", force: :cascade do |t|
    t.string   "reserve_id",        null: false
    t.string   "event_id",          null: false
    t.string   "name"
    t.string   "kana"
    t.string   "child_name",        null: false
    t.string   "child_kana",        null: false
    t.string   "child_age"
    t.text     "email",             null: false
    t.string   "tel"
    t.string   "reserve_period_id", null: false
    t.integer  "beginner_flg"
    t.text     "remarks"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "answer",            null: false
    t.text     "answer_content"
    t.integer  "status",            null: false
  end

end
