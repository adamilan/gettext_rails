# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 1) do

  create_table "accounts", :force => true do |t|
    t.integer "amount",    :limit => 11
    t.integer "person_id", :limit => 11
  end

  create_table "articles", :force => true do |t|
    t.string "title",       :default => "", :null => false
    t.text   "description",                 :null => false
    t.date   "lastupdate"
  end

  create_table "article_properties", :force => true do |t|
    t.integer "article_id"
    t.string "key", :null => false
    t.string "value"
  end

  create_table "people", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string "name",       :default => "", :null => false
    t.date   "lastupdate"
  end

  create_table "resumes", :force => true do |t|
    t.integer "user_id", :null => false
    t.text    "content"
  end

end
