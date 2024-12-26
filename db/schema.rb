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

ActiveRecord::Schema[7.1].define(version: 2024_12_25_065412) do
  create_table "notes", force: :cascade do |t|
    t.text "content"
    t.integer "day"
    t.integer "month"
    t.integer "line_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day", "month", "line_number"], name: "index_notes_on_day_and_month_and_line_number", unique: true
  end

end
