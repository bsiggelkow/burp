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

ActiveRecord::Schema.define(version: 20140904172849) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["client_id"], name: "index_accounts_on_client_id"

  create_table "ad_sets", force: true do |t|
    t.string   "name"
    t.integer  "initiative_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ad_sets", ["initiative_id"], name: "index_ad_sets_on_initiative_id"

  create_table "ads", force: true do |t|
    t.string   "name"
    t.integer  "ad_set_id"
    t.integer  "target_id"
    t.integer  "creative_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ads", ["ad_set_id"], name: "index_ads_on_ad_set_id"
  add_index "ads", ["creative_id"], name: "index_ads_on_creative_id"
  add_index "ads", ["target_id"], name: "index_ads_on_target_id"

  create_table "campaigns", force: true do |t|
    t.string   "name"
    t.string   "objective"
    t.string   "campaign_group_status"
    t.string   "buying_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creatives", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "initiatives", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "initiatives", ["account_id"], name: "index_initiatives_on_account_id"

  create_table "targets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
