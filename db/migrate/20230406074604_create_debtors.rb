class CreateDebtors < ActiveRecord::Migration[7.0]
  def change
    create_table :debtors do |t|
      t.string :name
      t.string :street
      t.string :city
      t.integer :zip_code
      t.string :country

      t.timestamps
    end
  end
end
