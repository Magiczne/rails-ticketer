class Ticket < ApplicationRecord
  validates :name, :presence => true, :length => { minimum: 6 }
  validates :address, :presence => true, :length => { minimum: 6 }
  validates :price, :presence => true, :numericality => true
  validates :email_address, :presence => true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
