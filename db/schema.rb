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

ActiveRecord::Schema.define(version: 2019_08_15_224643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_link"
    t.string "main_image_link"
  end

  create_table "comments", force: :cascade do |t|
    t.text "post"
    t.bigint "flyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["flyer_id"], name: "index_comments_on_flyer_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "flyer_attended_by_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "flyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flyer_id"], name: "index_flyer_attended_by_users_on_flyer_id"
    t.index ["user_id"], name: "index_flyer_attended_by_users_on_user_id"
  end

  create_table "flyers", force: :cascade do |t|
    t.string "title"
    t.float "cost"
    t.text "info"
    t.time "time"
    t.date "date_of_event"
    t.bigint "user_id"
    t.bigint "project_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "max_attendees"
    t.text "address"
    t.index ["category_id"], name: "index_flyers_on_category_id"
    t.index ["project_id"], name: "index_flyers_on_project_id"
    t.index ["user_id"], name: "index_flyers_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "city"
    t.text "bio"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.text "name"
    t.float "balance_raised"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active"
    t.string "image_link"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comments", "flyers"
  add_foreign_key "comments", "users"
  add_foreign_key "flyer_attended_by_users", "flyers"
  add_foreign_key "flyer_attended_by_users", "users"
  add_foreign_key "flyers", "categories"
  add_foreign_key "flyers", "projects"
  add_foreign_key "flyers", "users"
  add_foreign_key "profiles", "users"
end
