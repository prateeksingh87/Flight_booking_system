class FlightsController < ApplicationController

  def index
  	@flights = Flight.all
  end

	def new
		@flight = Flight.new
		# @seatings = @flight.seatings.build
	end

	def create
		@flight = Flight.create(flight_params)
		redirect_to flight_path(id: @flight.id)
  end

  def book_flight
  	
  end
 
  def show
  	@flight = Flight.find(params[:id])
  end


	private
	def flight_params
		params.require(:flight).permit(:name,:origin,:destination,:seats,:pnr_number, seatings_attributes: [ :name, :seats ,:number_of_rows,:row_seats,:seat_price,:_destroy])
	end
end
