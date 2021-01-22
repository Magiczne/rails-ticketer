class Ticket < ApplicationRecord
  # Built in validators
  validates :name, :presence => true, :length => { minimum: 2 }
  validates :address, :presence => true, :length => { minimum: 6 }
  validates :price, :presence => true, :numericality => true
  validates :email_address, :presence => true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, :presence => true, :length => { minimum: 9, maximum: 13 }

  # Relations
  belongs_to :event
  belongs_to :user
end
