class Location < ApplicationRecord
  validates :name, presence: true
  validates :blurb, presence: true
end
