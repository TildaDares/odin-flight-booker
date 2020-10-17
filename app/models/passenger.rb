class Passenger < ApplicationRecord
  validates :name, :email, presence: true
  belongs_to :booking
end
