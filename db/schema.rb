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

ActiveRecord::Schema.define(version: 20161218110906) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.date     "ap_date"
    t.time     "ap_time"
    t.integer  "receptionist_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["receptionist_id"], name: "index_appointments_on_receptionist_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "doc_name"
    t.integer  "doc_office_no"
    t.string   "doc_fee"
    t.integer  "specialty_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "email"
    t.index ["specialty_id"], name: "index_doctors_on_specialty_id"
  end

  create_table "medications", force: :cascade do |t|
    t.string   "md_name"
    t.text     "md_description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "pat_name"
    t.string   "pat_gender"
    t.date     "pat_dob"
    t.text     "pat_address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "prescribtion_details", force: :cascade do |t|
    t.integer  "prescribtion_id"
    t.integer  "medication_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "dosage"
    t.string   "duration"
    t.index ["medication_id"], name: "index_prescribtion_details_on_medication_id"
    t.index ["prescribtion_id"], name: "index_prescribtion_details_on_prescribtion_id"
  end

  create_table "prescribtions", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_prescribtions_on_doctor_id"
    t.index ["patient_id"], name: "index_prescribtions_on_patient_id"
  end

  create_table "receptionists", force: :cascade do |t|
    t.string   "rec_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "sp_name"
    t.text     "sp_description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
