class Log < ApplicationRecord
  belongs_to :customer

  validates :customer_id, :action, presence: true
end
