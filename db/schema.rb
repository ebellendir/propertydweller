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

ActiveRecord::Schema.define(version: 20150601010349) do

  create_table "blogs", force: :cascade do |t|
    t.string   "property_id"
    t.string   "blog_title"
    t.string   "blog_content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prop_types", force: :cascade do |t|
    t.string   "layout_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: :cascade do |t|
    t.string   "property_pic"
    t.string   "property_name"
    t.integer  "zip"
    t.string   "city"
    t.string   "state"
    t.string   "street_name"
    t.integer  "street_number"
    t.string   "access_code"
    t.string   "prop_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenancies", force: :cascade do |t|
    t.string   "property_id"
    t.string   "user_id"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "street_number"
    t.string   "street_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "profile_pic"
    t.string   "user_name"
    t.string   "password"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end