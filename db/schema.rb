# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_01_30_185535) do
  create_table "authors", id: :integer, charset: "utf8mb4", collation: "utf8mb4_uca1400_ai_ci", force: :cascade do |t|
    t.string "surname", limit: 40, null: false
    t.string "firstname", limit: 40, null: false
    t.string "lastname", limit: 100
    t.index ["surname", "firstname", "lastname"], name: "index_authors_on_surname_and_firstname_and_lastname", unique: true
  end

  create_table "books", charset: "utf8mb4", collation: "utf8mb4_uca1400_ai_ci", force: :cascade do |t|
    t.text "title"
    t.integer "author_id", null: false
    t.integer "genre_id", limit: 1
    t.integer "literary_form_id", limit: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "fk_rails_53d51ce16a"
    t.index ["genre_id"], name: "fk_rails_776de3933f"
    t.index ["literary_form_id"], name: "fk_rails_7945fd0ccc"
  end

  create_table "genres", id: { type: :integer, limit: 1 }, charset: "utf8mb4", collation: "utf8mb4_uca1400_ai_ci", force: :cascade do |t|
    t.string "genre_name", limit: 40, null: false
    t.index ["genre_name"], name: "index_genres_on_genre_name", unique: true
  end

  create_table "literary_forms", id: { type: :integer, limit: 1 }, charset: "utf8mb4", collation: "utf8mb4_uca1400_ai_ci", force: :cascade do |t|
    t.string "form_name"
    t.index ["form_name"], name: "index_literary_forms_on_form_name", unique: true
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_uca1400_ai_ci", force: :cascade do |t|
    t.string "username", limit: 40, null: false
    t.string "password", null: false
    t.string "email", limit: 60, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "books", "authors"
  add_foreign_key "books", "genres", on_delete: :nullify
  add_foreign_key "books", "literary_forms", on_delete: :nullify
end
