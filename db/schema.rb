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

ActiveRecord::Schema.define(version: 20170903163106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.boolean "active_cart"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmer_products", id: :serial, force: :cascade do |t|
    t.integer "farmer_id"
    t.integer "product_id"
    t.integer "quantity"
    t.decimal "price", precision: 30, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmers", id: :serial, force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.text "bio"
    t.string "address"
    t.string "zip_code"
    t.boolean "certified_organic"
    t.boolean "local"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_carts", id: :serial, force: :cascade do |t|
    t.integer "farmer_product_id"
    t.integer "cart_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "picture"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", id: :serial, force: :cascade do |t|
    t.integer "farmer_id"
    t.integer "user_id"
    t.string "review"
    t.string "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_thumbnail"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "picture"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
