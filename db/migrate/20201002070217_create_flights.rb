class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :from_airport_id
      t.integer :to_airport_id
      t.datetime :arrival_time
      t.datetime :departure_time
      t.integer :duration

      t.timestamps
    end
  end
end
