class Bill < ApplicationRecord
  belongs_to :customer

  validates :customer_id, presence: true
  validates :amount, numericality: true
end