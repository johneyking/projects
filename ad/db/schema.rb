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

ActiveRecord::Schema.define(version: 20150722070837) do

  create_table "advertisers", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "advertiser_id", limit: 4
    t.string   "name",          limit: 255
    t.string   "email",         limit: 255
    t.string   "phone",         limit: 255
    t.string   "account",       limit: 255
    t.string   "password",      limit: 255
    t.integer  "count",         limit: 4
  end

  create_table "advertises", force: :cascade do |t|
    t.integer  "advertise_id",  limit: 4
    t.integer  "advertiser_id", limit: 4
    t.string   "title",         limit: 255
    t.text     "content",       limit: 65535
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "location",      limit: 255
    t.integer  "max_number",    limit: 4
    t.integer  "last_number",   limit: 4
    t.integer  "total_view",    limit: 4
    t.integer  "total_check",   limit: 4
    t.integer  "total_send",    limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "advocates", force: :cascade do |t|
    t.integer  "advocate_id", limit: 4
    t.string   "account",     limit: 255
    t.string   "password",    limit: 255
    t.string   "email",       limit: 255
    t.string   "phone",       limit: 255
    t.string   "ibeacon_id",  limit: 255
    t.string   "name",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "information", force: :cascade do |t|
    t.integer  "information_id", limit: 4
    t.integer  "advertise_id",   limit: 4
    t.integer  "event",          limit: 4
    t.date     "event_date"
    t.time     "event_time"
    t.integer  "sequence",       limit: 4
    t.string   "mac_address",    limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "task_id",      limit: 4
    t.integer  "advocate_id",  limit: 4
    t.integer  "advertise_id", limit: 4
    t.integer  "send_number",  limit: 4
    t.integer  "status",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
