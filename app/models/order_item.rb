class OrderItem < ApplicationRecord
  after_create :update_inventory_stock
  belongs_to :order
  belongs_to :inventory

  validates :order_id, :inventory_id, :quantity, :price, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :price, numericality: true

  private

  def update_inventory_stock
    order_items.each do |item|
      item.inventory.decrement!(:quantity, item.quantity)
    end
  end
end
