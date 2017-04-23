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

ActiveRecord::Schema.define(version: 20170421194034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapter_views", force: :cascade do |t|
    t.string   "user"
    t.integer  "chapter"
    t.string   "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapters", force: :cascade do |t|
    t.string   "length"
    t.string   "season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "seasons", force: :cascade do |t|
    t.string   "title"
    t.string   "show"
    t.string   "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_reviews", force: :cascade do |t|
    t.string   "show"
    t.string   "user"
    t.string   "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_subscriptions", force: :cascade do |t|
    t.string   "show"
    t.string   "user"
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
    t.string   "actors"
    t.integer  "numberOfSeasons"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "role"
    t.string   "password"
    t.string   "email"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "facebook"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
