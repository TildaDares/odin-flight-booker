class PassengerMailer < ApplicationMailer
  default from: 'odinbookingssupport@gmail.com'

  def thank_you_email(passenger)
    @passenger = passenger
    mail(to: @passenger.email, subject: 'Booking Confirmation')
  end
end
