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

ActiveRecord::Schema[8.0].define(version: 2025_01_30_101849) do
  create_table "authors", charset: "utf8mb4", collation: "utf8mb4_uca1400_ai_ci", force: :cascade do |t|
    t.string "surname", limit: 40, null: false
    t.string "firstname", limit: 40, null: false
    t.string "lastname", limit: 100
    t.index ["surname", "firstname", "lastname"], name: "index_authors_on_surname_and_firstname_and_lastname", unique: true
  end

  create_table "genres", charset: "utf8mb4", collation: "utf8mb4_uca1400_ai_ci", force: :cascade do |t|
    t.string "genre_name", limit: 40, null: false
    t.index ["genre_name"], name: "index_genres_on_genre_name", unique: true
  end

  create_table "literary_forms", id: { type: :integer, limit: 1 }, charset: "utf8mb4", collation: "utf8mb4_uca1400_ai_ci", force: :cascade do |t|
    t.string "form_name"
    t.index ["form_name"], name: "index_literary_forms_on_form_name", unique: true
  end
end
