class Sale < ApplicationRecord
  after_create :update_inventory_stock
  belongs_to :customer
  has_many :sale_items, dependent: :destroy
  has_many :inventories, through: :sale_items


  validates :customer_id, :amount, presence: true
  validates :amount, numericality: true

  private

  def update_inventory_stock
    sale_items.each do |item|
      item.inventory.decrement!(:quantity, item.quantity)
    end
  end
end
