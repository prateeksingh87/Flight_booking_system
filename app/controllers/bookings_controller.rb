class BookingsController < ApplicationController
	before_action :get_flight, only: [:new,:create]

	def flight_book
		@flight_seatings = Flight.find(params[:flight_number]).seatings
		
	end

	def new
		@booking = @flight.bookings.new
		@classes = @flight.seatings
	end

	def create
		@booking = @flight.bookings.create(booking_params)
		redirect_to booking_path(@booking.id)
  end

  def edit
  	@booking = Booking.find(params[:id])
  	
  end

  def show
  	@booking = Booking.find(params[:id])	
  end

  private

	def booking_params
		params.require(:booking).permit(:name,:age,:seat,:seat_class)
	end

	def get_flight
		if params[:flight].present?
			@flight = Flight.find(params[:flight])
		else
			@flight = Flight.find(params[:booking]['flight'])
		end
	end
end
