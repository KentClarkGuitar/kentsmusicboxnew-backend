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

ActiveRecord::Schema.define(version: 2018_08_27_172138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "song_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["song_id"], name: "index_favorites_on_song_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.boolean "ordered"
    t.boolean "isComplete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders_songs", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_orders_songs_on_order_id"
    t.index ["song_id"], name: "index_orders_songs_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "sku"
    t.string "genre"
    t.string "releaseDate"
    t.string "album"
    t.string "link"
    t.string "name"
    t.string "artistName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.boolean "hasSubsrcription", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favorites", "songs"
  add_foreign_key "favorites", "users"
  add_foreign_key "orders_songs", "orders"
  add_foreign_key "orders_songs", "songs"
end
