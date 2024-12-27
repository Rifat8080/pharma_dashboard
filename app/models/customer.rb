class Customer < ApplicationRecord
  has_many :bills
  has_many :logs
  has_many :orders
  has_many :prescriptions
  has_many :sales

  validates :first_name, :last_name, :email, :phone, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end