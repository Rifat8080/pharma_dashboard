class Notification < ApplicationRecord
  belongs_to :inventory

  validates :inventory_id, :message, presence: true
  validates :read, inclusion: { in: [true, false] }
end