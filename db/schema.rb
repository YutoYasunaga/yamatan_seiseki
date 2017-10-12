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

ActiveRecord::Schema.define(version: 20171012105943) do

  create_table "registrations", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.string   "status",     default: "確認待ち"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["student_id"], name: "index_registrations_on_student_id"
    t.index ["teacher_id"], name: "index_registrations_on_teacher_id"
  end

  create_table "registrations_subjects", id: false, force: :cascade do |t|
    t.integer "registration_id", null: false
    t.integer "subject_id",      null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string   "var",                   null: false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", limit: 30
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "department"
    t.string   "status",             default: "在学中"
    t.string   "password_digest"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "enter_school_year"
  end

  create_table "studies", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.string   "status"
    t.float    "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_studies_on_student_id"
    t.index ["subject_id"], name: "index_studies_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.integer  "credit"
    t.string   "division"
    t.string   "section"
    t.string   "department"
    t.integer  "teacher_id"
    t.string   "status",     default: "実行中"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "department"
    t.string   "status",             default: "在職中"
    t.string   "password_digest"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
