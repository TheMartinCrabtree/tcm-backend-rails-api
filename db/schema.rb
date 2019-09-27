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

ActiveRecord::Schema.define(version: 2019_09_27_155234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "itemname"
    t.string "category"
    t.string "description"
    t.decimal "price"
    t.integer "currentstock"
    t.integer "imageid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderjoins", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "order_id"
    t.integer "itemquantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_orderjoins_on_item_id"
    t.index ["order_id"], name: "index_orderjoins_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "shoppingcartjoins", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "shoppingcart_id"
    t.integer "itemquantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_shoppingcartjoins_on_item_id"
    t.index ["shoppingcart_id"], name: "index_shoppingcartjoins_on_shoppingcart_id"
  end

  create_table "shoppingcarts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shoppingcarts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.integer "phone"
    t.string "billinginfo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orderjoins", "items"
  add_foreign_key "orderjoins", "orders"
  add_foreign_key "orders", "users"
  add_foreign_key "shoppingcartjoins", "items"
  add_foreign_key "shoppingcartjoins", "shoppingcarts"
  add_foreign_key "shoppingcarts", "users"
end
