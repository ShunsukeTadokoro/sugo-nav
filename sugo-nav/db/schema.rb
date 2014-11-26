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

ActiveRecord::Schema.define(version: 20141119133907) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "email_for_index"
    t.string   "hashed_password"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.string   "category"
    t.integer  "view_number"
    t.text     "description"
    t.string   "target"
    t.string   "meet_date"
    t.string   "type_of_employment"
    t.string   "job_feature"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  add_index "jobs", ["company_id"], name: "index_jobs_on_company_id"

  create_table "matchings", force: true do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matchings", ["job_id"], name: "index_matchings_on_job_id"
  add_index "matchings", ["user_id"], name: "index_matchings_on_user_id"

  create_table "tests", force: true do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "family_name"
    t.string   "given_name"
    t.string   "family_name_kana"
    t.string   "given_name_kana"
    t.string   "thumbnail"
    t.datetime "birth"
    t.string   "tel"
    t.string   "address"
    t.string   "email"
    t.string   "email_for_index"
    t.string   "hashed_password"
    t.string   "school"
    t.string   "division"
    t.integer  "year"
    t.text     "appeal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
