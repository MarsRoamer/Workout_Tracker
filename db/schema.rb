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

ActiveRecord::Schema.define(version: 2018_06_15_214559) do

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "motto"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.integer "gym_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_workouts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "time", default: "N/A"
    t.string "score", default: "N/A"
    t.index ["user_id"], name: "index_user_workouts_on_user_id"
    t.index ["workout_id"], name: "index_user_workouts_on_workout_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.integer "gym_id"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.index ["gym_id"], name: "index_users_on_gym_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "conditioning_type"
    t.string "description"
    t.integer "gym_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
