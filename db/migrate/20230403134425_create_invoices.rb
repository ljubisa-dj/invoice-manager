class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :invoice_name
      t.decimal :amount_owed
      t.date :due_date
      t.string :status

      t.timestamps
    end
  end
end
