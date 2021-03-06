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

ActiveRecord::Schema.define(version: 20160622112529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lessons", force: :cascade do |t|
    t.integer  "lesson_number"
    t.integer  "parts"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "marks", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "lesson_id"
    t.integer  "part"
    t.integer  "mark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name_first"
    t.string   "name_last"
    t.integer  "teacher_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "current_lesson"
    t.integer  "current_part"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "title"
    t.string   "name_last"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
