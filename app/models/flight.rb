class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings

  def change_date_format
    departure_time.strftime("%A, %d %b %Y")
  end
end
