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

ActiveRecord::Schema.define(version: 20170823131345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "news", force: :cascade do |t|
    t.string   "title",                  null: false
    t.text     "content",                null: false
    t.integer  "channel",    default: 0, null: false
    t.integer  "event",      default: 0, null: false
    t.string   "tag",                    null: false
    t.integer  "status",     default: 0, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["channel"], name: "index_news_on_channel", using: :btree
    t.index ["content"], name: "index_news_on_content", using: :btree
    t.index ["title"], name: "index_news_on_title", using: :btree
  end

end
