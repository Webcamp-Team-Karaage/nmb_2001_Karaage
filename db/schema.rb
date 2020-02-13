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

ActiveRecord::Schema.define(version: 2020_02_12_045326) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cart_products", force: :cascade do |t|
    t.integer "member_id"
    t.integer "product_id"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "first_name_kana"
    t.string "last_name_kana"
    t.string "postal_code"
    t.string "phone"
    t.integer "status", default: 0
    t.text "address"
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["first_name"], name: "index_members_on_first_name"
    t.index ["first_name_kana"], name: "index_members_on_first_name_kana"
    t.index ["last_name"], name: "index_members_on_last_name"
    t.index ["last_name_kana"], name: "index_members_on_last_name_kana"
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "order_products", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.float "price_tax"
    t.integer "count"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "member_id"
    t.integer "payment"
    t.string "address_name"
    t.string "postal_code"
    t.text "address"
    t.integer "postage", default: 800, null: false
    t.integer "status", default: 0, null: false
    t.string "total_price"
    t.string "float"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "genre_id"
    t.string "name"
    t.text "text"
    t.integer "price"
<<<<<<< HEAD
    t.integer "status"
    t.string "product_image_id"
=======
    t.integer "status", default: 0, null: false
    t.string "products_image_id"
>>>>>>> fdf11116c4894dcfff8a5a1c6305a89365dda6e7
    t.datetime "created_at", null: false
    t.datetime "update_at"
  end

  create_table "shipping_addresses", force: :cascade do |t|
    t.string "address_name"
    t.string "postal_code"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "member_id"
  end

end
