class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find_by(id: params[:booking][:flight_id])
    passengers_count = params[:passengers]
    passengers_count.to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      @booking.passengers.each do |passenger|
        PassengerMailer.thank_you_email(passenger).deliver_now!
      end
      redirect_to booking_path(@booking)
    else
      render "new"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email] )
  end
end
