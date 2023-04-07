class Debtor < ApplicationRecord
  validates :name, :street, :city, :zip_code, :country, presence: true
  has_many :invoices, dependent: :destroy
end
