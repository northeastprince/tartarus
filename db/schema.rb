# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_05_18_194525) do
  create_table "event_requests", force: :cascade do |t|
    t.integer "event_id", null: false
    t.string "uuid", null: false
    t.string "ip_address", null: false
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_requests_on_event_id"
    t.index ["ip_address"], name: "index_event_requests_on_ip_address"
    t.index ["uuid"], name: "index_event_requests_on_uuid"
  end

  create_table "events", force: :cascade do |t|
    t.string "recordable_type"
    t.integer "recordable_id"
    t.string "action", null: false
    t.text "details", default: "{}", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recordable_type", "recordable_id", "action"], name: "index_events_on_recordable_type_and_recordable_id_and_action"
  end

  create_table "inmates", force: :cascade do |t|
    t.integer "prison_id", null: false
    t.string "name", null: false
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prison_id"], name: "index_inmates_on_prison_id"
  end

  create_table "prisons", force: :cascade do |t|
    t.integer "world_id", null: false
    t.string "name", null: false
    t.string "location"
    t.string "security_level", default: "minimum", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_prisons_on_world_id"
  end

  create_table "worlds", force: :cascade do |t|
    t.string "name"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token"], name: "index_worlds_on_token"
  end

  add_foreign_key "event_requests", "events"
  add_foreign_key "inmates", "prisons"
  add_foreign_key "prisons", "worlds"
end
