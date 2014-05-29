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

ActiveRecord::Schema.define(version: 20140529002037) do

  create_table "appraisal_field_data", force: true do |t|
    t.string   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appraisal_field_types", force: true do |t|
    t.string   "name"
    t.string   "html"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appraisal_fields", force: true do |t|
    t.string   "name"
    t.string   "hint"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "appraisal_model_id"
    t.integer  "appraisal_field_type_id"
  end

  create_table "appraisal_models", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appraisals", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chat_id"
    t.integer  "appraisal_model_id"
    t.integer  "student_id"
  end

  create_table "chats", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "talk_id"
    t.integer  "school_id"
  end

  create_table "chats_students", id: false, force: true do |t|
    t.integer "chat_id"
    t.integer "student_id"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "nick"
    t.string   "email"
    t.date     "birthday"
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "talks", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
