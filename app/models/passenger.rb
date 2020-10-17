class Passenger < ApplicationRecord
  validates :name, :email, presence: true
  has_many :flights
  has_many :bookings, through: :flights
end
