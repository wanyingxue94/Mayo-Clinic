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

ActiveRecord::Schema.define(version: 20161030124129) do

  create_table "appointments", force: true do |t|
    t.date     "date"
    t.time     "time"
    t.string   "duration"
    t.text     "appointment_reason"
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.integer  "nurse_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "patient_id"
    t.integer  "appointment_id"
    t.integer  "stars"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.string   "speciality"
    t.string   "phone"
    t.string   "year_of_service"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "email"
    t.string   "password_digest"
  end

  create_table "nurses", force: true do |t|
    t.string   "name"
    t.string   "year_of_service"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "email"
    t.string   "password_digest"
  end

  create_table "patients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.date     "date_of_birth"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "gender"
  end

  create_table "prescriptions", force: true do |t|
    t.text     "prescription_details"
    t.date     "prescription_date"
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
