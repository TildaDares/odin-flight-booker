class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find_by(id: params[:bookings][:flight_id])
    passengers_count = params[:passengers]
    passengers_count.to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(params[:bookings][:flight_id])
  end

  def booking_params
    params.require(:bookings).permit(:flight_id, passengers_attributes: [:name, :email] )
  end
end
