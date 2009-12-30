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

ActiveRecord::Schema.define(:version => 20091225235834) do

  create_table "images", :force => true do |t|
    t.text     "url"
    t.string   "digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["digest"], :name => "index_images_on_digest"

  create_table "keys", :force => true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
    t.string   "secret"
  end

  add_index "keys", ["value"], :name => "index_keys_on_value"

  create_table "people", :force => true do |t|
    t.string   "email",                            :null => false
    t.string   "crypted_password",                 :null => false
    t.string   "password_salt",                    :null => false
    t.string   "persistence_token",                :null => false
    t.string   "perishable_token",                 :null => false
    t.integer  "login_count",       :default => 0, :null => false
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
