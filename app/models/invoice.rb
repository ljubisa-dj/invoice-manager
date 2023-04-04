class Invoice < ApplicationRecord
  validates :invoice_name, :amount_owed, :status, presence: true
  has_one :debtor
end
