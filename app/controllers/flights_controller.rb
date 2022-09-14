class FlightsController < ApplicationController
  before_action :check_if_logged_in, except: [ :index, :show ]
  
  def json
    render json: Flight.all

  end




  def new

    @flight = Flight.new 
  end

  def create

    @flight = Flight.new flight_params
    @flight.user_id = @current_user.id
    
    # @flight.save

    if @flight.persisted?
      redirect_to flight_path(@flight)
    else
      render :new
    end #else
  end

  def index
    @flights = Flight.all
  end

  def show
    @flight = Flight.find params[:id]
   
    # @booking = Booking.new
  end

  def edit
    @flight = Flight.find params[:id]
    
    
    if @flight.user_id != @current_user.id
      redirect_to login_path 
    end

  end

  def update
    @flight = Flight.find params[:id]
    
    # @flight.save

    
    if @flight.user_id != @current_user.id
      redirect_to login_path
      return
      
    end
    
    
    
    
    if @flight.update flight_params
      redirect_to flight_path(@flight)
    else
      render :edit
    end
  end

  def destroy
    @flight = Flight.find params[:id]

    if @flight.user_id != @current_user.id
      redirect_to login_path
      return
    end

    @flight.destroy
    redirect_to flights_path
  end

  


  private
  def flight_params
    params.require(:flight).permit(:flight, :departure_date, :origin, :destination, :seats, :plane_id)
  end
end
