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

ActiveRecord::Schema.define(version: 20150709134600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "articles", ["user_id"], name: "index_articles_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "article_id"
    t.integer  "question_id"
    t.integer  "ressource_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "categories", ["article_id"], name: "index_categories_on_article_id", using: :btree
  add_index "categories", ["question_id"], name: "index_categories_on_question_id", using: :btree
  add_index "categories", ["ressource_id"], name: "index_categories_on_ressource_id", using: :btree

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "article_id"
    t.integer  "question_id"
    t.integer  "ressource_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "favorites", ["article_id"], name: "index_favorites_on_article_id", using: :btree
  add_index "favorites", ["question_id"], name: "index_favorites_on_question_id", using: :btree
  add_index "favorites", ["ressource_id"], name: "index_favorites_on_ressource_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["user_id"], name: "index_questions_on_user_id", using: :btree

  create_table "ressources", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "site"
    t.string   "address"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.integer  "category_id"
    t.integer  "sub_category_id"
  end

  add_index "ressources", ["user_id"], name: "index_ressources_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "article_id"
    t.integer  "question_id"
    t.integer  "ressource_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "reviews", ["article_id"], name: "index_reviews_on_article_id", using: :btree
  add_index "reviews", ["question_id"], name: "index_reviews_on_question_id", using: :btree
  add_index "reviews", ["ressource_id"], name: "index_reviews_on_ressource_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "sub_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "article_id"
    t.integer  "question_id"
    t.integer  "ressource_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "sub_categories", ["article_id"], name: "index_sub_categories_on_article_id", using: :btree
  add_index "sub_categories", ["question_id"], name: "index_sub_categories_on_question_id", using: :btree
  add_index "sub_categories", ["ressource_id"], name: "index_sub_categories_on_ressource_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "picture"
    t.string   "name"
    t.string   "token"
    t.datetime "token_expiry"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "article_id"
    t.integer  "question_id"
    t.integer  "ressource_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "votes", ["article_id"], name: "index_votes_on_article_id", using: :btree
  add_index "votes", ["question_id"], name: "index_votes_on_question_id", using: :btree
  add_index "votes", ["ressource_id"], name: "index_votes_on_ressource_id", using: :btree
  add_index "votes", ["user_id"], name: "index_votes_on_user_id", using: :btree

  add_foreign_key "articles", "users"
  add_foreign_key "categories", "articles"
  add_foreign_key "categories", "questions"
  add_foreign_key "categories", "ressources"
  add_foreign_key "favorites", "articles"
  add_foreign_key "favorites", "questions"
  add_foreign_key "favorites", "ressources"
  add_foreign_key "favorites", "users"
  add_foreign_key "questions", "users"
  add_foreign_key "ressources", "users"
  add_foreign_key "reviews", "articles"
  add_foreign_key "reviews", "questions"
  add_foreign_key "reviews", "ressources"
  add_foreign_key "reviews", "users"
  add_foreign_key "sub_categories", "articles"
  add_foreign_key "sub_categories", "questions"
  add_foreign_key "sub_categories", "ressources"
  add_foreign_key "votes", "articles"
  add_foreign_key "votes", "questions"
  add_foreign_key "votes", "ressources"
  add_foreign_key "votes", "users"
end
