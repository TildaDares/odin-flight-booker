class RemoveColumnFromFlights < ActiveRecord::Migration[6.0]
  def change
    remove_column :flights, :duration, :integer
  end
end
