class Prescription < ApplicationRecord
  belongs_to :customer

  validates :customer_id, :medication_name, :dosage, presence: true
  validates :dosage, numericality: true
end
