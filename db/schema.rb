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

ActiveRecord::Schema[7.0].define(version: 2023_01_21_023812) do
  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.date "date_creation"
    t.string "category"
    t.string "type_job"
    t.integer "salary"
    t.text "detail_company"
    t.text "detail_job"
    t.text "requirement"
    t.text "optional_requirement"
    t.integer "user_id", null: false
    t.integer "recruiter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recruiter_id"], name: "index_jobs_on_recruiter_id"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "company"
    t.string "website"
    t.text "detail_company"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.string "phone"
    t.date "birth_date"
    t.string "linkedin"
    t.string "title"
    t.text "experience"
    t.text "education"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
    t.index ["password_digest"], name: "index_users_on_password_digest", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "jobs", "recruiters"
  add_foreign_key "jobs", "users"
end
