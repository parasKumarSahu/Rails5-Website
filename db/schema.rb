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

ActiveRecord::Schema.define(version: 2018_12_21_141044) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "businesses", force: :cascade do |t|
    t.string "body"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_businesses_on_product_id"
  end

  create_table "decors", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "type"
    t.string "image_path"
    t.string "image_type"
    t.integer "image_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decors_references", force: :cascade do |t|
    t.integer "decor_id"
    t.integer "reference_id"
    t.index ["decor_id"], name: "index_decors_references_on_decor_id"
    t.index ["reference_id"], name: "index_decors_references_on_reference_id"
  end

  create_table "designs", force: :cascade do |t|
    t.string "selector"
    t.string "guide"
    t.string "area"
    t.string "sectors"
    t.string "finishes"
    t.string "availability"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_designs_on_product_id"
  end

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "overviews", force: :cascade do |t|
    t.string "body"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_overviews_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_products_on_family_id"
  end

  create_table "products_references", force: :cascade do |t|
    t.integer "product_id"
    t.integer "reference_id"
    t.index ["product_id"], name: "index_products_references_on_product_id"
    t.index ["reference_id"], name: "index_products_references_on_reference_id"
  end

  create_table "references", force: :cascade do |t|
    t.string "tag"
    t.string "project"
    t.string "country_city"
    t.string "address"
    t.string "address_link"
    t.string "installer"
    t.string "installer_link"
    t.string "owner"
    t.string "owner_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technicals", force: :cascade do |t|
    t.string "composition"
    t.string "manufacturing"
    t.string "install"
    t.string "perform"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_technicals_on_product_id"
  end

end
