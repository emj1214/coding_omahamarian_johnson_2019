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

ActiveRecord::Schema.define(version: 20190115230034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookids", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "livre_id"
    t.integer "code_id"
    t.datetime "created_at"
    t.index ["livre_id"], name: "index_bookids_on_livre_id"
    t.index ["student_id"], name: "index_bookids_on_student_id"
  end

  create_table "livres", force: :cascade do |t|
    t.string "title"
    t.string "book_link"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "grade"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

end
