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

ActiveRecord::Schema.define(version: 2019_11_20_224103) do

  create_table "grades", force: :cascade do |t|
    t.string "assignment1"
    t.string "assignment2"
    t.string "assignment3"
    t.string "assignment4"
    t.string "assignment5"
    t.string "assignment6"
    t.string "assignment7"
    t.string "assignment8"
    t.string "assignment9"
    t.string "assignment10"
    t.float "gradeNum1"
    t.float "gradeNum2"
    t.float "gradeNum3"
    t.float "gradeNum4"
    t.float "gradeNum5"
    t.float "gradeNum6"
    t.float "gradeNum7"
    t.float "gradeNum8"
    t.float "gradeNum9"
    t.float "gradeNum10"
    t.float "wieght1"
    t.float "weight2"
    t.float "weight3"
    t.float "weight4"
    t.float "weight5"
    t.float "weight6"
    t.float "weight7"
    t.float "weight8"
    t.float "weight9"
    t.float "weight10"
    t.string "result"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "weightAvg"
    t.index ["user_id"], name: "index_grades_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "studentName"
    t.string "schoolName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
