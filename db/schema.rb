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
    t.string   "club_name",    limit: 255
    t.string   "position",     limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "main_file_id", limit: 4
  end

  add_index "clubs", ["main_file_id"], name: "index_clubs_on_main_file_id", using: :btree

  create_table "dependents", force: :cascade do |t|
    t.string   "last_name",     limit: 255
    t.string   "first_name",    limit: 255
    t.string   "middle_name",   limit: 255
    t.string   "city_address1", limit: 255
    t.string   "city_address2", limit: 255
    t.string   "prov_address1", limit: 255
    t.string   "prov_address2", limit: 255
    t.string   "relationship",  limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "main_file_id",  limit: 4
    t.date     "birth_date"
  end

  add_index "dependents", ["main_file_id"], name: "index_dependents_on_main_file_id", using: :btree

  create_table "educations", force: :cascade do |t|
    t.string   "institution_name", limit: 255
    t.string   "address1",         limit: 255
    t.string   "address2",         limit: 255
    t.integer  "year_start",       limit: 4
    t.integer  "year_finished",    limit: 4
    t.string   "degree",           limit: 255
    t.text     "awards",           limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "main_file_id",     limit: 4
  end

  add_index "educations", ["main_file_id"], name: "index_educations_on_main_file_id", using: :btree

  create_table "emp_histories", force: :cascade do |t|
    t.string   "employer_name",    limit: 255
    t.string   "company_address1", limit: 255
    t.string   "company_address2", limit: 255
    t.date     "start_date"
    t.string   "job_title",        limit: 255
    t.text     "reason",           limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "main_file_id",     limit: 4
    t.date     "end_date"
  end

  add_index "emp_histories", ["main_file_id"], name: "index_emp_histories_on_main_file_id", using: :btree

  create_table "emp_references", force: :cascade do |t|
    t.string   "last_name",       limit: 255
    t.string   "first_name",      limit: 255
    t.string   "middle_name",     limit: 255
    t.string   "city_address1",   limit: 255
    t.string   "city_address2",   limit: 255
    t.string   "prov_address1",   limit: 255
    t.string   "prov_address2",   limit: 255
    t.string   "occupation",      limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "main_file_id",    limit: 4
    t.string   "contact_details", limit: 255
  end

  add_index "emp_references", ["main_file_id"], name: "index_emp_references_on_main_file_id", using: :btree

  create_table "emp_statuses", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "desc",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "emp_types", force: :cascade do |t|
    t.string   "desc",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "code",       limit: 255
  end

  create_table "family_ms", force: :cascade do |t|
    t.string   "last_name",     limit: 255
    t.string   "first_name",    limit: 255
    t.string   "middle_name",   limit: 255
    t.string   "city_address1", limit: 255
    t.string   "city_address2", limit: 255
    t.string   "prov_address1", limit: 255
    t.string   "prov_address2", limit: 255
    t.string   "relationship",  limit: 255
    t.string   "occupation",    limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "main_file_id",  limit: 4
    t.date     "birth_date"
  end

  add_index "family_ms", ["main_file_id"], name: "index_family_ms_on_main_file_id", using: :btree

  create_table "guard_ext_files", force: :cascade do |t|
    t.string   "security_license_number", limit: 255
    t.date     "expiry_date"
    t.string   "badge_number",            limit: 255
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "main_file_id",            limit: 4
  end

  add_index "guard_ext_files", ["main_file_id"], name: "index_guard_ext_files_on_main_file_id", using: :btree

  create_table "main_files", force: :cascade do |t|
    t.string   "job_position",           limit: 255
    t.string   "sss_number",             limit: 255
    t.string   "tin_number",             limit: 255
    t.string   "philhealth",             limit: 255
    t.string   "family_name",            limit: 255
    t.string   "given_name",             limit: 255
    t.string   "middle_name",            limit: 255
    t.date     "application_date"
    t.date     "hire_date"
    t.date     "regularization_date"
    t.string   "sex",                    limit: 255
    t.date     "birth_date"
    t.string   "birth_place",            limit: 255
    t.float    "weight",                 limit: 24
    t.string   "blood_type",             limit: 255
    t.string   "citizenship",            limit: 255
    t.string   "hair_color",             limit: 255
    t.string   "religion",               limit: 255
    t.text     "job_skills",             limit: 65535
    t.string   "hobbies",                limit: 255
    t.string   "city_address1",          limit: 255
    t.string   "city_address2",          limit: 255
    t.string   "prov_address1",          limit: 255
    t.string   "prov_address2",          limit: 255
    t.string   "emergency_name",         limit: 255
    t.string   "emergency_address",      limit: 255
    t.string   "emergency_relationship", limit: 255
    t.string   "emergency_number",       limit: 255
    t.string   "language",               limit: 255
    t.boolean  "convicted"
    t.boolean  "pending_case"
    t.boolean  "assignment_willingness"
    t.boolean  "ojt"
    t.string   "endorser",               limit: 255
    t.string   "interviewing_officer",   limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "birth_marks",            limit: 255
    t.integer  "height_ft",              limit: 4
    t.integer  "height_in",              limit: 4
    t.integer  "emp_status_id",          limit: 4
    t.integer  "emp_type_id",            limit: 4
    t.integer  "mar_status_id",          limit: 4
    t.date     "retirement_date"
    t.string   "pagibig_number",         limit: 255
    t.string   "picture_file_name",      limit: 255
    t.string   "picture_content_type",   limit: 255
    t.integer  "picture_file_size",      limit: 4
    t.datetime "picture_updated_at"
    t.string   "mobile_number",          limit: 255
  end

  add_index "main_files", ["emp_status_id"], name: "index_main_files_on_emp_status_id", using: :btree
  add_index "main_files", ["emp_type_id"], name: "index_main_files_on_emp_type_id", using: :btree
  add_index "main_files", ["mar_status_id"], name: "index_main_files_on_mar_status_id", using: :btree

  create_table "mar_statuses", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "desc",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "res_histories", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "house_number", limit: 4
    t.string   "street",       limit: 255
    t.string   "dtc",          limit: 255
    t.string   "province",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "main_file_id", limit: 4
  end

  add_index "res_histories", ["main_file_id"], name: "index_res_histories_on_main_file_id", using: :btree

  create_table "spouses", force: :cascade do |t|
    t.string   "last_name",     limit: 255
    t.string   "first_name",    limit: 255
    t.string   "middle_name",   limit: 255
    t.string   "city_address1", limit: 255
    t.string   "city_address2", limit: 255
    t.string   "prov_address1", limit: 255
    t.string   "prov_address2", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "main_file_id",  limit: 4
    t.date     "birth_date"
  end

  add_index "spouses", ["main_file_id"], name: "index_spouses_on_main_file_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.boolean  "admin"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "clubs", "main_files"
  add_foreign_key "dependents", "main_files"
  add_foreign_key "educations", "main_files"
  add_foreign_key "emp_histories", "main_files"
  add_foreign_key "emp_references", "main_files"
  add_foreign_key "family_ms", "main_files"
  add_foreign_key "guard_ext_files", "main_files"
  add_foreign_key "main_files", "emp_statuses"
  add_foreign_key "main_files", "emp_types"
  add_foreign_key "main_files", "mar_statuses"
  add_foreign_key "res_histories", "main_files"
  add_foreign_key "spouses", "main_files"
end
