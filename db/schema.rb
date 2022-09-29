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

ActiveRecord::Schema[7.0].define(version: 2022_09_51_003732) do
  create_table "expenses", force: :cascade do |t|
    t.integer "total_amount_yen"
    t.integer "after_tax_10"
    t.integer "after_tax_0"
    t.boolean "approved", default: false
    t.string "expense_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "ctax10", default: true
    t.boolean "ctax8", default: false
    t.boolean "ctax0", default: false
  end

  create_table "flats", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.integer "price_per_night"
    t.integer "number_of_guests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
