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

ActiveRecord::Schema.define(version: 20160222163458) do

  create_table "employers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "company_name"
    t.string   "location"
    t.string   "industry"
    t.string   "link_to_website"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.datetime "last_loggedin"
  end

  create_table "jobapps", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "job_title"
    t.string   "job_description"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "salary"
    t.integer  "employer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "college_name"
    t.string   "course_title"
    t.integer  "current_year"
    t.integer  "average_grade"
    t.string   "link_to_full_resume"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "undergraduate"
    t.boolean  "mature_student"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "attachment"
    t.string   "college_name"
    t.string   "course_title"
    t.float    "average_grade"
    t.string   "linkedin_account"
    t.integer  "current_year"
    t.datetime "last_loggedin"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
