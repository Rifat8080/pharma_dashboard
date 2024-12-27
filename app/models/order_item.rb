class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :inventory

  validates :order_id, :inventory_id, :quantity, :price, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :price, numericality: true
end