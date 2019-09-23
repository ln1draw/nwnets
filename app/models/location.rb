class Location < ApplicationRecord
  attr_accessor :email_suggestion
  validates :name, presence: true
  validates :blurb, presence: true
  geocoded_by :address

  def address
    [street, city, state, country].compact.join(', ')
  end
end
