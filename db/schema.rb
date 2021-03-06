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

ActiveRecord::Schema.define(version: 20160412212240) do

  create_table "events", force: :cascade do |t|
    t.string   "event_name",     limit: 255
    t.string   "event_location", limit: 255
    t.datetime "event_date",     limit: 26
    t.integer  "user_id",        limit: 32
    t.datetime "created_at",     limit: 26,  null: false
    t.datetime "updated_at",     limit: 26,  null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "event_id",   limit: 32
    t.integer  "user_id",    limit: 32
    t.datetime "created_at", limit: 26, null: false
    t.datetime "updated_at", limit: 26, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at", limit: 26
    t.datetime "remember_created_at",    limit: 26
    t.integer  "sign_in_count",          limit: 32,  default: 0,  null: false
    t.datetime "current_sign_in_at",     limit: 26
    t.datetime "last_sign_in_at",        limit: 26
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",             limit: 26,               null: false
    t.datetime "updated_at",             limit: 26,               null: false
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
