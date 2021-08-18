class BookingsController < ApplicationController
	before_action :get_flight, only: [:new,:create]
	before_action :get_booking, only: [:edit , :update]

	def flight_book
		@flight_seatings = Flight.find(params[:flight_number]).seatings
		
	end

	def new
		@booking = @flight.bookings.new
		@classes = @flight.seatings
	end

	def create
		@booking = @flight.bookings.new(booking_params)
		seat_class = Seating.find(params[:booking]['seat_class']).name
		@booking.seat_class = seat_class
		@remaining_seats = (@flight.seats - params[:booking]['seat'].to_i)
		if @booking.save
			@flight.update(seats: @remaining_seats)
			redirect_to booking_path(@booking.id)
    end
  end

  def edit
  	@classes = @booking.flight.seatings
  end

  def update
  	seat_class = Seating.find(params[:booking]['seat_class']).name
  	@booking.update(name: params[:booking]['name'], age: params[:booking]['age'], seat: params[:booking]['seat'],seat_class: seat_class)
  	redirect_to booking_path(@booking.id)
  end

  def show
  	@booking = Booking.find(params[:id])	
  end

  private

	def booking_params
		params.require(:booking).permit(:name,:age,:seat)
	end

	def get_booking
		@booking = Booking.find(params[:id])
		
	end

	def get_flight
		if params[:flight].present?
			@flight = Flight.find(params[:flight])
		else
			@flight = Flight.find(params[:booking]['flight'])
		end
	end
end
