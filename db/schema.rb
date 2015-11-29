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

ActiveRecord::Schema.define(version: 20151129210957) do

  create_table "events", force: :cascade do |t|
    t.float    "duration"
    t.text     "notes"
    t.text     "outcome"
    t.integer  "game_id"
    t.integer  "meetup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "rating"
  end

  create_table "events_players", id: false, force: :cascade do |t|
    t.integer "event_id"
    t.integer "player_id"
  end

  add_index "events_players", ["event_id"], name: "index_events_players_on_event_id"
  add_index "events_players", ["player_id"], name: "index_events_players_on_player_id"

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.float    "time_to_play"
    t.string   "genre"
    t.integer  "min_players"
    t.integer  "max_players"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "description"
  end

  create_table "games_players", id: false, force: :cascade do |t|
    t.integer "game_id"
    t.integer "player_id"
  end

  add_index "games_players", ["game_id"], name: "index_games_players_on_game_id"
  add_index "games_players", ["player_id"], name: "index_games_players_on_player_id"

  create_table "meetups", force: :cascade do |t|
    t.date     "date"
    t.float    "duration"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.text     "notes"
  end

  create_table "meetups_players", id: false, force: :cascade do |t|
    t.integer "meetup_id"
    t.integer "player_id"
  end

  add_index "meetups_players", ["meetup_id"], name: "index_meetups_players_on_meetup_id"
  add_index "meetups_players", ["player_id"], name: "index_meetups_players_on_player_id"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "bio"
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "city"
    t.string   "state"
  end

end
