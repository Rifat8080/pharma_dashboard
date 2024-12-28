class Doctor < ApplicationRecord
  validates :first_name, :last_name, :email, :phone, :specialization, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
