# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_28_160147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enquiries", force: :cascade do |t|
    t.string "title"
    t.boolean "urgent"
    t.string "property_address"
    t.text "information"
    t.boolean "confirmed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "contractor_id"
    t.date "date"
    t.text "timeslot"
    t.index ["contractor_id"], name: "index_enquiries_on_contractor_id"
    t.index ["user_id"], name: "index_enquiries_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.boolean "completed"
    t.bigint "enquiry_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "time"
    t.index ["enquiry_id"], name: "index_jobs_on_enquiry_id"
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.float "rating"
    t.text "comment"
    t.bigint "job_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_reviews_on_job_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "user_professions", force: :cascade do |t|
    t.bigint "profession_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profession_id"], name: "index_user_professions_on_profession_id"
    t.index ["user_id"], name: "index_user_professions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "phone_number"
    t.string "location"
    t.boolean "contractor"
    t.string "contractor_name"
    t.text "bio"
    t.string "profile_picture"
    t.string "logo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "enquiries", "users"
  add_foreign_key "jobs", "enquiries"
  add_foreign_key "reviews", "jobs"
  add_foreign_key "reviews", "users"
  add_foreign_key "user_professions", "professions"
  add_foreign_key "user_professions", "users"
end
