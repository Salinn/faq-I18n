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

ActiveRecord::Schema.define(version: 20150123182736) do

  create_table "faq_translations", force: true do |t|
    t.integer  "faq_id",     null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "question"
    t.text     "answer"
  end

  add_index "faq_translations", ["faq_id"], name: "index_faq_translations_on_faq_id"
  add_index "faq_translations", ["locale"], name: "index_faq_translations_on_locale"

  create_table "faqs", force: true do |t|
    t.string   "question"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
