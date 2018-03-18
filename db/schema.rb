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

ActiveRecord::Schema.define(version: 20180317234311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "partners", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "project_partners", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.bigint "partner_id"
    t.index ["partner_id"], name: "index_project_partners_on_partner_id"
    t.index ["project_id"], name: "index_project_partners_on_project_id"
  end

  create_table "project_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "buildings_assignment"
    t.string "building_type"
    t.string "project_status"
    t.string "date"
    t.integer "impact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_type_id"
    t.index ["project_type_id"], name: "index_projects_on_project_type_id"
  end

  add_foreign_key "project_partners", "partners"
  add_foreign_key "project_partners", "projects"
  add_foreign_key "projects", "project_types"
end
