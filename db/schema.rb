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

ActiveRecord::Schema.define(version: 20161224222555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_buttons", force: :cascade do |t|
    t.string   "name_button"
    t.string   "title_button"
    t.string   "type_button"
    t.string   "path_button"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "admin_lesions", force: :cascade do |t|
    t.string   "name_lesion"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "admin_word_lesions", force: :cascade do |t|
    t.string   "en_word"
    t.string   "en_audio_word"
    t.string   "bg_word"
    t.string   "bg_audio_word"
    t.string   "visible_word",  default: "true"
    t.string   "img_word"
    t.integer  "lesion_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

end
