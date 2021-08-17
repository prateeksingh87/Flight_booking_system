class Flight < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :bookings
  has_many :seatings
   accepts_nested_attributes_for :seatings
end
