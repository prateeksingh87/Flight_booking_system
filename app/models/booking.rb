class Booking < ApplicationRecord
  after_create :set_pnr_number 
  after_create :create_total 
  belongs_to :flight

  def set_pnr_number
    pnr_number = self.seat_class + '_'  +SecureRandom.urlsafe_base64(8)
    self.update_column(:pnr_number, pnr_number) 
  end

  def create_total
    seat_per_price = self.flight.seatings.find_by(name: self.seat_class).seat_price
    total = self.seat * self.flight.seatings.find_by(name: self.seat_class).seat_price
    self.update_column(:total_amount, total) 
  end
end
