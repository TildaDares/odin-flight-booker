class PassengerMailer < ApplicationMailer
  default from: 'railsexampleapp@gmail.com'

  def thank_you_email
    @passenger = params[:passenger]
    mail(to: @passenger.email, subject: 'Booking Confirmation')
  end
end
