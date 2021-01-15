class Event < ApplicationRecord
  validates :artist, :presence => true, :length => { minimum: 3 }
  validates :price_low, :presence => true, :numericality => true
  validates :price_high, :presence => true, :numericality => true
  validates :event_date, :presence => true

  has_many :tickets
end
