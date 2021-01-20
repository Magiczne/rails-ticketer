class Event < ApplicationRecord
  # Built in validators
  validates :artist, :presence => true, :length => { minimum: 3 }
  validates :price_low, :presence => true, :numericality => true
  validates :price_high, :presence => true, :numericality => true
  validates :event_date, :presence => true

  # Custom validators
  validate :price_high_value, :event_not_passed

  # Relations
  has_many :tickets

  def event_not_passed
    if event_date.presence && event_date < Date.today
      errors.add('Event', 'already passed')
    end
  end

  def price_high_value
    if price_high.presence && price_low.presence && price_high < price_low
      errors.add('Price high', "value should be equal to #{price_low} or larger")
    end
  end
end
