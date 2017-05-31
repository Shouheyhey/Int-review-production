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

ActiveRecord::Schema.define(version: 20170531115021) do

  create_table "Products", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "detail",     limit: 65535
    t.text     "image_url",  limit: 65535
    t.string   "url",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "open_data",  limit: 255
  end

  create_table "Users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "kanji_name",             limit: 255
    t.string   "furigana_name",          limit: 255
    t.date     "birthday"
    t.string   "sex",                    limit: 1
    t.string   "address",                limit: 255
    t.string   "university",             limit: 255
    t.string   "department",             limit: 255
    t.string   "culture_or_science",     limit: 255
    t.integer  "graduation_year",        limit: 4
    t.string   "company",                limit: 255
    t.string   "other",                  limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "review",               limit: 4
    t.integer  "rate",                 limit: 4
    t.integer  "product_id",           limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "user_id",              limit: 4
    t.string   "occupation",           limit: 255
    t.string   "length",               limit: 255
    t.string   "often",                limit: 255
    t.string   "hourly_wage",          limit: 255
    t.integer  "rate_flexibility",     limit: 4
    t.integer  "rate_wage",            limit: 4
    t.integer  "rate_future",          limit: 4
    t.integer  "rate_growth",          limit: 4
    t.integer  "rate_social",          limit: 4
    t.integer  "rate_value",           limit: 4
    t.integer  "rate_reccommendation", limit: 4
    t.text     "review_job",           limit: 65535
    t.text     "review_authority",     limit: 65535
    t.text     "review_skills",        limit: 65535
    t.text     "review_training",      limit: 65535
    t.text     "review_environment",   limit: 65535
    t.text     "review_expectation",   limit: 65535
    t.text     "review_merit",         limit: 65535
  end

end
