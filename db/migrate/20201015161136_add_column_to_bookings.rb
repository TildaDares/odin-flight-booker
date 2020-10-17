class AddColumnToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :passenger_id, :integer
  end
end
