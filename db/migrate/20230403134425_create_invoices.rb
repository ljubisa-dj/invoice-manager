class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :title
      t.decimal :amount
      t.date :due
      t.boolean :is_paid, default: false

      t.timestamps
    end
  end
end
