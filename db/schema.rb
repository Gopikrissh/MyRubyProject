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

ActiveRecord::Schema.define(version: 20151201222759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "evaluations", force: :cascade do |t|
    t.integer  "coach_id"
    t.integer  "player_tryout_id"
    t.integer  "rating"
    t.integer  "speed"
    t.integer  "shooting"
    t.integer  "passing"
    t.text     "comment"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "evaluations", ["coach_id", "player_tryout_id"], name: "index_evaluations_on_coach_id_and_player_tryout_id", using: :btree
  add_index "evaluations", ["player_tryout_id", "coach_id"], name: "index_evaluations_on_player_tryout_id_and_coach_id", using: :btree

  create_table "guardians", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "guardians", ["user_id"], name: "index_guardians_on_user_id", using: :btree

  create_table "guardianships", force: :cascade do |t|
    t.integer  "guardian_id"
    t.integer  "player_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "guardianships", ["guardian_id", "player_id"], name: "index_guardianships_on_guardian_id_and_player_id", using: :btree
  add_index "guardianships", ["player_id", "guardian_id"], name: "index_guardianships_on_player_id_and_guardian_id", using: :btree

  create_table "player_tryouts", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "tryout_id"
    t.integer  "payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "player_tryouts", ["player_id", "tryout_id"], name: "index_player_tryouts_on_player_id_and_tryout_id", using: :btree
  add_index "player_tryouts", ["tryout_id", "player_id"], name: "index_player_tryouts_on_tryout_id_and_player_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "profiles", ["confirmation_token"], name: "index_profiles_on_confirmation_token", unique: true, using: :btree
  add_index "profiles", ["email"], name: "index_profiles_on_email", unique: true, using: :btree
  add_index "profiles", ["reset_password_token"], name: "index_profiles_on_reset_password_token", unique: true, using: :btree

  create_table "tryouts", force: :cascade do |t|
    t.datetime "date"
    t.money    "fee",        scale: 2
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "phone"
    t.integer  "gender"
    t.datetime "dob"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.text     "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "profile_id"
  end

  add_index "users", ["id", "type"], name: "index_users_on_id_and_type", using: :btree
  add_index "users", ["profile_id"], name: "index_users_on_profile_id", using: :btree

  add_foreign_key "evaluations", "player_tryouts"
  add_foreign_key "guardians", "users"
  add_foreign_key "guardianships", "guardians"
  add_foreign_key "player_tryouts", "tryouts"
end
