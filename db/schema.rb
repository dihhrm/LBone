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

ActiveRecord::Schema.define(:version => 20151108150601) do

  create_table "agendamentos", :force => true do |t|
    t.integer  "item_id"
    t.integer  "booking_id"
    t.datetime "agendamento_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "bookings", :force => true do |t|
    t.string   "professor"
    t.string   "discipline"
    t.string   "classe"
    t.string   "students"
    t.datetime "schedule"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.time     "booking_time"
  end

  create_table "inputs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "value"
    t.datetime "date"
    t.integer  "item_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.integer  "amount"
    t.string   "ref_code"
    t.string   "localization"
    t.string   "classification"
    t.string   "slug"
    t.text     "description"
    t.text     "additional_info"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "items", ["slug"], :name => "index_items_on_slug", :unique => true

  create_table "outputs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "value"
    t.datetime "date"
    t.integer  "item_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "username",               :default => "", :null => false
    t.integer  "level"
    t.boolean  "status"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",        :default => 0,  :null => false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
