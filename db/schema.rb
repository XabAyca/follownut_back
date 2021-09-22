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

ActiveRecord::Schema.define(version: 2021_09_18_110416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "nutritionist_id"
    t.datetime "date"
    t.text "content"
    t.float "weight"
    t.float "height"
    t.float "body_fat"
    t.float "muscle_mass"
    t.float "visceral_fat"
    t.float "BMI"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["nutritionist_id"], name: "index_appointments_on_nutritionist_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "nutritionist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nutritionist_id"], name: "index_articles_on_nutritionist_id"
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "logbooks", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.boolean "is_shared", default: false
    t.bigint "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_logbooks_on_patient_id"
  end

  create_table "nutritionists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "avatar"
    t.string "slug_calendly"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_nutritionists_on_email", unique: true
    t.index ["reset_password_token"], name: "index_nutritionists_on_reset_password_token", unique: true
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "gender", default: 0
    t.date "date_of_birth"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "nutritionist_id"
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["nutritionist_id"], name: "index_patients_on_nutritionist_id"
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  add_foreign_key "patients", "nutritionists"
end
