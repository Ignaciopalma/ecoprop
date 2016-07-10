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

ActiveRecord::Schema.define(version: 20160710214006) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "contact_forms", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "address"
    t.integer  "price",           limit: 10
    t.text     "description"
    t.integer  "rooms"
    t.integer  "toilets"
    t.integer  "floors"
    t.integer  "total_area"
    t.integer  "house_area"
    t.boolean  "pool"
    t.boolean  "furnished"
    t.integer  "parking"
    t.boolean  "cellar"
    t.boolean  "house"
    t.boolean  "apartment"
    t.boolean  "terrain"
    t.integer  "common_expenses", limit: 10
    t.string   "district"
    t.string   "city"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "for_rent"
    t.boolean  "for_sale"
    t.string   "image"
    t.string   "imagetwo"
    t.string   "imagethree"
    t.string   "imagefour"
    t.string   "imagefive"
    t.boolean  "highlight"
  end

  create_table "uf_prices", force: :cascade do |t|
    t.integer  "uf_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
