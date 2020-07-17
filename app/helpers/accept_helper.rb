module AcceptHelper
  def accept_booking(booking)
    booking.status = "accepted"
 
  end
end