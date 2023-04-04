ActiveRecord::Schema[7.0].define(version: 2023_04_03_134425) do
  enable_extension "plpgsql"

  create_table "invoices", force: :cascade do |t|
    t.string "title"
    t.decimal "amount"
    t.date "due"
    t.boolean "is_paid", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
