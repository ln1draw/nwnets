class Location < ApplicationRecord
  validates :name, presence: true
  validates :blurb, presence: true
  geocoded_by :address

  def address
    [street, city, state, country].compact.join(', ')
  end
end
