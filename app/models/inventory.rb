class Inventory < ApplicationRecord
  has_many :notifications
  has_many :order_items
  has_many :sale_items

  validates :name, :quantity, :price, :cost_price, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :price, :cost_price, numericality: true
end
