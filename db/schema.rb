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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20190621152451) do

  create_table "descriptions", force: :cascade do |t|
    t.text "project"
    t.integer "title_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title_id", "created_at"], name: "index_descriptions_on_title_id_and_created_at"
    t.index ["title_id"], name: "index_descriptions_on_title_id"
  end
=======
ActiveRecord::Schema.define(version: 20190621152251) do
>>>>>>> 0b991a591316cf1b21f61af54ed2680f8675dd4e

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.boolean "completed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_tasks", force: :cascade do |t|
    t.string "content"
    t.integer "Project__title_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Project__title_id"], name: "index_project_tasks_on_Project__title_id"
  end

  create_table "projects", force: :cascade do |t|
    t.text "title"
    t.integer "description_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["description_id"], name: "index_projects_on_description_id"
  end

  create_table "titles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
