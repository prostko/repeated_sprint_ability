# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_10_182623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "principals", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "principals_tickets", id: false, force: :cascade do |t|
    t.bigint "principal_id", null: false
    t.bigint "ticket_id", null: false
  end

  create_table "sprints", force: :cascade do |t|
    t.datetime "beginning"
    t.datetime "ending"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags_tickets", id: false, force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "ticket_id", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "sprint_id", null: false
    t.integer "point_estimate"
    t.datetime "dev_begin_at"
    t.datetime "dev_end_at"
    t.datetime "merged_at"
    t.integer "bounces"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sprint_id"], name: "index_tickets_on_sprint_id"
  end

  add_foreign_key "tickets", "sprints"
end
