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

ActiveRecord::Schema.define(version: 20180127091524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leave_balances", force: :cascade do |t|
    t.bigint "user_id"
    t.date "start_date"
    t.date "end_date"
    t.string "leave_type"
    t.float "days_entitled", default: 0.0
    t.integer "entitled_policy", default: 0
    t.float "allowable_encashed", default: 0.0
    t.integer "encashed_policy", default: 0
    t.integer "days_carry_forward", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_leave_balances_on_user_id"
  end

  create_table "leave_entitlements", force: :cascade do |t|
    t.string "leave_type"
    t.float "days_entitled", default: 0.0
    t.integer "entitled_policy", default: 0
    t.float "allowable_encashed", default: 0.0
    t.integer "encashed_policy", default: 0
    t.integer "days_carry_forward", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_settings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_types", force: :cascade do |t|
    t.string "name"
    t.float "days_entitled", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "todo_lists", force: :cascade do |t|
    t.string "task"
    t.string "description"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "leave_balances", "users"
end
