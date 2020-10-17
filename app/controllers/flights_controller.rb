class FlightsController < ApplicationController
  def index
    @flights = Flight.where("from_airport_id = ? 
                              AND to_airport_id = ? 
                              AND departure_time::date = ?", 
                              params[:from_airport_id], 
                              params[:to_airport_id], 
                              params[:departure_time])
  end
end
