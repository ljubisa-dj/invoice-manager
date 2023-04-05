class Invoice < ApplicationRecord
  validates :title, :amount, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
  validates :is_paid, inclusion: { in: [true, false] }
  has_one :debtor
end
