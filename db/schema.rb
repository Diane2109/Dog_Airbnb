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

ActiveRecord::Schema.define(version: 2018_07_26_212110) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dog_sitters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.index ["city_id"], name: "index_dog_sitters_on_city_id"
  end

  create_table "puppies", force: :cascade do |t|
    t.string "name"
    t.string "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.index ["city_id"], name: "index_puppies_on_city_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.datetime "date"
    t.integer "puppy_id"
    t.integer "dog_sitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_sitter_id"], name: "index_strolls_on_dog_sitter_id"
    t.index ["puppy_id"], name: "index_strolls_on_puppy_id"
  end

end
