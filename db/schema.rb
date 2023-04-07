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

ActiveRecord::Schema[7.0].define(version: 2023_04_06_114004) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "debtors", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "city"
    t.integer "zip_code"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "title"
    t.decimal "amount"
    t.date "due"
    t.boolean "is_paid", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.bigint "debtor_id", null: false
    t.index ["debtor_id"], name: "index_invoices_on_debtor_id"
  end

  add_foreign_key "invoices", "debtors"
end
