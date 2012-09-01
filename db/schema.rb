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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120826205559) do

  create_table "admin_categories", :force => true do |t|
    t.string   "category"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "mail"
    t.datetime "created_at", :null => false
    t.datetime "login"
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "kevin_blog_id", :null => false
  end

  create_table "kevin_blogs", :force => true do |t|
    t.boolean  "state"
    t.integer  "category_id"
    t.string   "title"
    t.text     "body"
    t.string   "tag"
    t.datetime "created_at",  :null => false
    t.integer  "user_id"
    t.datetime "updated_at",  :null => false
    t.integer  "updated_by"
  end

end