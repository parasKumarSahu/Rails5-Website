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

ActiveRecord::Schema.define(version: 2019_01_15_201657) do

  create_table "academies", force: :cascade do |t|
    t.string "link"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "banners", force: :cascade do |t|
    t.string "events"
    t.string "downloads"
    t.string "projects"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "businesses", force: :cascade do |t|
    t.string "body"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_businesses_on_product_id"
  end

  create_table "certifications", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "mobile"
    t.string "employee_number"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "descriptions", force: :cascade do |t|
    t.string "home"
    t.string "products"
    t.string "academy"
    t.string "downloads"
    t.string "projects"
    t.string "events"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "caption"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "installations", force: :cascade do |t|
    t.string "safety"
    t.string "fabrication"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_installations_on_product_id"
  end

  create_table "learns", force: :cascade do |t|
    t.integer "course_id"
    t.string "link"
    t.string "thumbnail"
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_learns_on_course_id"
  end

  create_table "logos", force: :cascade do |t|
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturings", force: :cascade do |t|
    t.string "inputs"
    t.string "process"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_manufacturings_on_product_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "alternate_phone"
    t.string "office_type"
    t.string "email"
    t.decimal "lat"
    t.decimal "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organization_updates", force: :cascade do |t|
    t.string "image"
    t.string "video"
    t.string "description"
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

  create_table "performences", force: :cascade do |t|
    t.string "features"
    t.string "maintenance"
    t.string "warranty"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_performences_on_product_id"
  end

  create_table "presses", force: :cascade do |t|
    t.string "image"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_updates", force: :cascade do |t|
    t.string "link"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_products_on_family_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.string "description"
    t.string "answer"
    t.integer "certification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certification_id"], name: "index_questions_on_certification_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.integer "day_number"
    t.string "content"
    t.string "speaker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "background"
  end

  create_table "references", force: :cascade do |t|
    t.string "image"
    t.string "customer"
    t.string "project_type"
    t.string "project"
    t.string "product"
    t.string "code"
    t.string "location"
    t.string "quantity"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.string "type"
    t.string "category"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_resources_on_product_id"
  end

  create_table "user_infos", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "user_id"
    t.string "designation"
    t.string "permanent_office"
    t.string "current_office"
    t.string "extension"
    t.string "mob_number"
    t.string "alt_number"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_infos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
