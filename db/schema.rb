ActiveRecord::Schema[7.0].define(version: 2023_04_03_134425) do
  enable_extension "plpgsql"

  create_table "invoices", force: :cascade do |t|
    t.string "invoice_name"
    t.decimal "amount_owed"
    t.date "due_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
