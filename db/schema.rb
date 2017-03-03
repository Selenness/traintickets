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

ActiveRecord::Schema.define(version: 20170303081130) do

  create_table "cars", force: :cascade do |t|
    t.integer  "top_seats"
    t.integer  "bottom_seats"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "train_id"
    t.integer  "number"
    t.integer  "side_top_seats"
    t.integer  "side_bottom_seats"
    t.string   "type"
    t.integer  "seated_seats"
    t.index ["id", "type"], name: "index_cars_on_id_and_type"
    t.index ["train_id"], name: "index_cars_on_train_id"
  end

  create_table "railway_stations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "railway_stations_routes", force: :cascade do |t|
    t.integer  "railway_station_id"
    t.integer  "route_id"
    t.integer  "serial_number"
    t.integer  "position"
    t.datetime "arrival_time"
    t.datetime "departure_time"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "station_id"
    t.integer  "train_id"
    t.time     "arrival_time"
    t.time     "departure_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["station_id"], name: "index_schedules_on_station_id"
    t.index ["train_id"], name: "index_schedules_on_train_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "first_station_id"
    t.integer  "end_station_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.integer  "train_id"
    t.text     "user_name"
    t.text     "user_passport"
    t.index ["end_station_id"], name: "index_tickets_on_end_station_id"
    t.index ["first_station_id"], name: "index_tickets_on_first_station_id"
    t.index ["train_id"], name: "index_tickets_on_train_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "trains", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "route_id"
    t.integer  "current_station_id"
    t.boolean  "order_type"
    t.index ["current_station_id"], name: "index_trains_on_current_station_id"
    t.index ["route_id"], name: "index_trains_on_route_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
