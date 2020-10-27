class PassengerMailer < ApplicationMailer
  default from: 'donotreply@odinsbookings.com'

  def thank_you_email(passenger)
    @passenger = passenger
    mail(to: @passenger.email, subject: 'Booking Confirmation')
  end
end
