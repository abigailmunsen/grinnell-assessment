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

ActiveRecord::Schema.define(version: 2020_04_29_163852) do

  create_table "coursegoals", force: :cascade do |t|
    t.integer "goalNum"
    t.text "goalText"
    t.text "goalDetails"
    t.integer "deptgoal_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_coursegoals_on_course_id"
    t.index ["deptgoal_id"], name: "index_coursegoals_on_deptgoal_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "courseCode"
    t.integer "courseSection"
    t.string "semester"
    t.string "courseTitle"
    t.text "courseDetails"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_courses_on_department_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "deptSubject"
    t.string "deptFullName"
    t.string "deptCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deptgoals", force: :cascade do |t|
    t.integer "goalNum"
    t.text "goalText"
    t.text "goalDetails"
    t.integer "instgoal_id"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_deptgoals_on_department_id"
    t.index ["instgoal_id"], name: "index_deptgoals_on_instgoal_id"
  end

  create_table "instgoals", force: :cascade do |t|
    t.integer "goalNum"
    t.text "goalText"
    t.string "goalDetails"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
