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

ActiveRecord::Schema.define(version: 20170617004249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actorshows", force: :cascade do |t|
    t.integer "actor_id"
    t.integer "show_id"
    t.index ["actor_id"], name: "index_actorshows_on_actor_id", using: :btree
    t.index ["show_id"], name: "index_actorshows_on_show_id", using: :btree
  end

  create_table "chapter_views", force: :cascade do |t|
    t.string   "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "chapter_id"
  end

  create_table "chapters", force: :cascade do |t|
    t.string   "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "season_id"
    t.string   "title"
  end

  create_table "news", force: :cascade do |t|
    t.string   "show"
    t.string   "actor"
    t.datetime "date"
    t.string   "title"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "season_chapters", force: :cascade do |t|
    t.integer "chapter_id"
    t.integer "season_id"
    t.index ["chapter_id"], name: "index_season_chapters_on_chapter_id", using: :btree
    t.index ["season_id"], name: "index_season_chapters_on_season_id", using: :btree
  end

  create_table "seasons", force: :cascade do |t|
    t.string   "title"
    t.string   "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "show_id"
  end

  create_table "show_reviews", force: :cascade do |t|
    t.string   "show"
    t.string   "user"
    t.string   "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shows", force: :cascade do |t|
    t.string   "title"
    t.string   "genre"
    t.float    "rating"
    t.float    "rating_n"
    t.boolean  "permission"
    t.string   "country"
    t.string   "language"
    t.string   "subtitles"
    t.integer  "numberOfSeasons"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "image"
  end

  create_table "showseasons", force: :cascade do |t|
    t.integer "show_id"
    t.integer "season_id"
    t.index ["season_id"], name: "index_showseasons_on_season_id", using: :btree
    t.index ["show_id"], name: "index_showseasons_on_show_id", using: :btree
  end

  create_table "subscriptions", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "show_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "role"
    t.string   "password"
    t.string   "email"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "facebook"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
