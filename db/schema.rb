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

ActiveRecord::Schema.define(version: 20140904205906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["client_id"], name: "index_accounts_on_client_id", using: :btree

  create_table "ad_sets", force: true do |t|
    t.string   "name"
    t.integer  "initiative_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ad_sets", ["initiative_id"], name: "index_ad_sets_on_initiative_id", using: :btree

  create_table "ads", force: true do |t|
    t.string   "name"
    t.integer  "ad_set_id"
    t.integer  "target_id"
    t.integer  "creative_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ads", ["ad_set_id"], name: "index_ads_on_ad_set_id", using: :btree
  add_index "ads", ["creative_id"], name: "index_ads_on_creative_id", using: :btree
  add_index "ads", ["target_id"], name: "index_ads_on_target_id", using: :btree

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

  add_index "initiatives", ["account_id"], name: "index_initiatives_on_account_id", using: :btree

  create_table "platform_account_types", force: true do |t|
    t.string   "name"
    t.integer  "platform_id"
    t.string   "endpoint"
    t.json     "schema"
    t.json     "field_mapping"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platform_account_types", ["platform_id"], name: "index_platform_account_types_on_platform_id", using: :btree

  create_table "platform_accounts", force: true do |t|
    t.string   "name"
    t.string   "uri"
    t.json     "features"
    t.integer  "account_id"
    t.integer  "platform_account_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platform_accounts", ["account_id"], name: "index_platform_accounts_on_account_id", using: :btree
  add_index "platform_accounts", ["platform_account_type_id"], name: "index_platform_accounts_on_platform_account_type_id", using: :btree

  create_table "platform_ad_set_types", force: true do |t|
    t.string   "name"
    t.integer  "platform_id"
    t.string   "endpoint"
    t.json     "schema"
    t.json     "field_mapping"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platform_ad_set_types", ["platform_id"], name: "index_platform_ad_set_types_on_platform_id", using: :btree

  create_table "platform_ad_sets", force: true do |t|
    t.string   "name"
    t.string   "uri"
    t.json     "features"
    t.integer  "ad_set_id"
    t.integer  "platform_ad_set_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platform_ad_sets", ["ad_set_id"], name: "index_platform_ad_sets_on_ad_set_id", using: :btree
  add_index "platform_ad_sets", ["platform_ad_set_type_id"], name: "index_platform_ad_sets_on_platform_ad_set_type_id", using: :btree

  create_table "platform_ad_types", force: true do |t|
    t.string   "name"
    t.integer  "platform_id"
    t.string   "endpoint"
    t.json     "schema"
    t.json     "field_mapping"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platform_ad_types", ["platform_id"], name: "index_platform_ad_types_on_platform_id", using: :btree

  create_table "platform_ads", force: true do |t|
    t.string   "name"
    t.string   "uri"
    t.json     "features"
    t.integer  "ad_id"
    t.integer  "platform_ad_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platform_ads", ["ad_id"], name: "index_platform_ads_on_ad_id", using: :btree
  add_index "platform_ads", ["platform_ad_type_id"], name: "index_platform_ads_on_platform_ad_type_id", using: :btree

  create_table "platform_initiative_types", force: true do |t|
    t.string   "name"
    t.integer  "platform_id"
    t.string   "endpoint"
    t.json     "schema"
    t.json     "field_mapping"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platform_initiative_types", ["platform_id"], name: "index_platform_initiative_types_on_platform_id", using: :btree

  create_table "platform_initiatives", force: true do |t|
    t.string   "name"
    t.string   "uri"
    t.json     "features"
    t.integer  "initiative_id"
    t.integer  "platform_initiative_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platform_initiatives", ["initiative_id"], name: "index_platform_initiatives_on_initiative_id", using: :btree
  add_index "platform_initiatives", ["platform_initiative_type_id"], name: "index_platform_initiatives_on_platform_initiative_type_id", using: :btree

  create_table "platforms", force: true do |t|
    t.string   "name"
    t.string   "base_url"
    t.json     "features"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "targets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
