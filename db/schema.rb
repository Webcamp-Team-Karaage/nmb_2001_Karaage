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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2020_02_10_025221) do

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

  create_table "admins_genres", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.integer "name"
    t.boolean "status"
=======
ActiveRecord::Schema.define(version: 2020_02_09_050356) do

  create_table "cart_products", force: :cascade do |t|
    t.integer "member_id"
    t.integer "product_id"
    t.integer "count"
>>>>>>> origin/master
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
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

<<<<<<< HEAD
=======
  create_table "orders", force: :cascade do |t|
    t.integer "member_id"
    t.integer "payment"
    t.string "address_name"
    t.string "postal_code"
    t.text "address"
    t.integer "postage"
    t.integer "status"
    t.string "total_price"
    t.string "float"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>> origin/master
  create_table "products", force: :cascade do |t|
    t.integer "genre_id"
    t.string "name"
    t.text "text"
    t.integer "price"
    t.integer "status"
<<<<<<< HEAD
    t.string "products_image_id"
    t.datetime "created_at", null: false
    t.datetime "update_at"
=======
    t.string "product_image_id"
    t.datetime "created_at", null: false
>>>>>>> origin/master
    t.datetime "updated_at", null: false
  end

end
