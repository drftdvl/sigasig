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

ActiveRecord::Schema.define(version: 20190606041112) do

  create_table "clubs", force: :cascade do |t|
    t.string   "club_name"
    t.string   "position"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "main_file_id"
  end

  add_index "clubs", ["main_file_id"], name: "index_clubs_on_main_file_id"

  create_table "dependents", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "city_address1"
    t.string   "city_address2"
    t.string   "prov_address1"
    t.string   "prov_address2"
    t.string   "relationship"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "main_file_id"
    t.date     "birth_date"
  end

  add_index "dependents", ["main_file_id"], name: "index_dependents_on_main_file_id"

  create_table "educations", force: :cascade do |t|
    t.string   "institution_name"
    t.string   "address1"
    t.string   "address2"
    t.integer  "year_start"
    t.integer  "year_finished"
    t.string   "degree"
    t.text     "awards"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "main_file_id"
  end

  add_index "educations", ["main_file_id"], name: "index_educations_on_main_file_id"

  create_table "emp_histories", force: :cascade do |t|
    t.string   "employer_name"
    t.string   "company_address1"
    t.string   "company_address2"
    t.date     "start_date"
    t.string   "job_title"
    t.text     "reason"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "main_file_id"
    t.date     "end_date"
  end

  add_index "emp_histories", ["main_file_id"], name: "index_emp_histories_on_main_file_id"

  create_table "emp_references", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "city_address1"
    t.string   "city_address2"
    t.string   "prov_address1"
    t.string   "prov_address2"
    t.string   "occupation"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "main_file_id"
    t.string   "contact_details"
  end

  add_index "emp_references", ["main_file_id"], name: "index_emp_references_on_main_file_id"

  create_table "emp_statuses", force: :cascade do |t|
    t.string   "code"
    t.string   "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emp_types", force: :cascade do |t|
    t.string   "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "code"
  end

  create_table "family_ms", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "city_address1"
    t.string   "city_address2"
    t.string   "prov_address1"
    t.string   "prov_address2"
    t.string   "relationship"
    t.string   "occupation"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "main_file_id"
    t.date     "birth_date"
  end

  add_index "family_ms", ["main_file_id"], name: "index_family_ms_on_main_file_id"

  create_table "guard_ext_files", force: :cascade do |t|
    t.string   "security_license_number"
    t.date     "expiry_date"
    t.string   "badge_number"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "main_file_id"
  end

  add_index "guard_ext_files", ["main_file_id"], name: "index_guard_ext_files_on_main_file_id"

  create_table "main_files", force: :cascade do |t|
    t.string   "job_position"
    t.string   "sss_number"
    t.string   "tin_number"
    t.string   "philhealth"
    t.string   "family_name"
    t.string   "given_name"
    t.string   "middle_name"
    t.date     "application_date"
    t.date     "hire_date"
    t.date     "regularization_date"
    t.string   "sex"
    t.date     "birth_date"
    t.string   "birth_place"
    t.float    "weight"
    t.string   "blood_type"
    t.string   "citizenship"
    t.string   "hair_color"
    t.string   "religion"
    t.text     "job_skills"
    t.string   "hobbies"
    t.string   "city_address1"
    t.string   "city_address2"
    t.string   "prov_address1"
    t.string   "prov_address2"
    t.string   "emergency_name"
    t.string   "emergency_address"
    t.string   "emergency_relationship"
    t.string   "emergency_number"
    t.string   "language"
    t.boolean  "convicted"
    t.boolean  "pending_case"
    t.boolean  "assignment_willingness"
    t.boolean  "ojt"
    t.string   "endorser"
    t.string   "interviewing_officer"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "birth_marks"
    t.integer  "height_ft"
    t.integer  "height_in"
    t.integer  "emp_status_id"
    t.integer  "emp_type_id"
    t.integer  "mar_status_id"
    t.date     "retirement_date"
    t.string   "pagibig_number"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "mobile_number"
  end

  add_index "main_files", ["emp_status_id"], name: "index_main_files_on_emp_status_id"
  add_index "main_files", ["emp_type_id"], name: "index_main_files_on_emp_type_id"
  add_index "main_files", ["mar_status_id"], name: "index_main_files_on_mar_status_id"

  create_table "mar_statuses", force: :cascade do |t|
    t.string   "code"
    t.string   "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "res_histories", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "house_number"
    t.string   "street"
    t.string   "dtc"
    t.string   "province"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "main_file_id"
  end

  add_index "res_histories", ["main_file_id"], name: "index_res_histories_on_main_file_id"

  create_table "spouses", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "city_address1"
    t.string   "city_address2"
    t.string   "prov_address1"
    t.string   "prov_address2"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "main_file_id"
    t.date     "birth_date"
  end

  add_index "spouses", ["main_file_id"], name: "index_spouses_on_main_file_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["name"], name: "index_users_on_name", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
