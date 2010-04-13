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

ActiveRecord::Schema.define(:version => 2) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "currency"
    t.string   "taxation_country"
    t.integer  "created_by_id"
    t.integer  "default_contact_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "province_state"
    t.string   "postalcode_zip"
    t.string   "country"
    t.string   "phone"
    t.string   "fax"
    t.string   "simply_guid"
    t.string   "language",           :limit => 5, :default => "en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "sage_username"
    t.string   "email"
    t.string   "password"
    t.string   "language",      :limit => 5, :default => "en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
