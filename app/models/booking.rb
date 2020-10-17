class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, through: :flights
  accepts_nested_attributes_for :passengers
end
