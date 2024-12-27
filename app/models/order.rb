class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items

  validates :customer_id, :status, :total_price, presence: true
  validates :total_price, numericality: true
end