class SaleItem < ApplicationRecord
  belongs_to :sale
  belongs_to :inventory

  validates :sale_id, :inventory_id, :quantity, :price, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :price, numericality: true
end
