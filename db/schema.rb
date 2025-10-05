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

ActiveRecord::Schema[8.0].define(version: 2025_10_05_083909) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "admin_setups", force: :cascade do |t|
    t.string "site_name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: true
  end

  create_table "api_base_server_lives", force: :cascade do |t|
    t.bigint "admin_setup_id", null: false
    t.string "status"
    t.string "url"
    t.datetime "incident_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_setup_id"], name: "index_api_base_server_lives_on_admin_setup_id"
  end

  add_foreign_key "api_base_server_lives", "admin_setups"
end
