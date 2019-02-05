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

ActiveRecord::Schema.define(version: 2018_12_06_200637) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "vendor_id"
    t.string "event_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "guestCount"
    t.integer "budget"
    t.string "comments"
    t.string "status", default: "pending"
    t.string "response"
    t.index ["customer_id"], name: "index_quotes_on_customer_id"
    t.index ["vendor_id"], name: "index_quotes_on_vendor_id"
  end

  create_table "vendor_pictures", force: :cascade do |t|
    t.integer "vendor_id"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendor_id"], name: "index_vendor_pictures_on_vendor_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "phone"
    t.string "service"
    t.string "website"
    t.string "logo_img"
    t.string "description"
    t.string "price_range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

end
