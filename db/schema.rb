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

ActiveRecord::Schema.define(version: 2020_04_16_004009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "other_name"
    t.string "last_name"
    t.date "birth_date"
    t.string "age_category"
    t.string "guardian"
    t.string "emergency_contact"
    t.string "gender"
    t.string "email"
    t.string "tel_number"
    t.datetime "last_sign_in"
    t.string "current_sign_in"
    t.text "address"
    t.string "password_digest"
    t.string "password"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
