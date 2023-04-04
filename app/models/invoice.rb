class Invoice < ApplicationRecord
  validates :invoice_name, :amount_owed, :status, presence: true
  has_one :debtor

  enum status: {
    pending: 0,
    paid: 1,
  }
end
