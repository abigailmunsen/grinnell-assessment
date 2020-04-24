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

ActiveRecord::Schema.define(version: 2020_04_24_172853) do

  create_table "course_goals", force: :cascade do |t|
    t.integer "goalNum"
    t.string "goalText"
    t.string "goalDetails"
    t.string "text"
    t.integer "DeptGoal_id"
    t.integer "Course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Course_id"], name: "index_course_goals_on_Course_id"
    t.index ["DeptGoal_id"], name: "index_course_goals_on_DeptGoal_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "code"
    t.integer "section"
    t.string "semester"
    t.string "title"
    t.text "details"
    t.integer "Department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Department_id"], name: "index_courses_on_Department_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dept_goals", force: :cascade do |t|
    t.integer "goalNum"
    t.string "goalText"
    t.text "goalDetails"
    t.integer "InstGoal_id"
    t.integer "Department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Department_id"], name: "index_dept_goals_on_Department_id"
    t.index ["InstGoal_id"], name: "index_dept_goals_on_InstGoal_id"
  end

  create_table "inst_goals", force: :cascade do |t|
    t.integer "goalNum"
    t.string "goalText"
    t.text "goalDetails"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
