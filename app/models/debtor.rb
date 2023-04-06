class Debtor < ApplicationRecord
  validates :name, :street, :city, :zip_code, :country, presence: true
end
