class FlightsController < ApplicationController
  # React frontend, so we wont have this token
  skip_before_action :verify_authenticity_token, raise:false
  
  def json
   headers['Access-Control-Allow-Origin'] = '*'

    @flights = Flight.all 

    render json: @flights, include: [:plane]

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

  def index_flight_destination
    headers['Access-Control-Allow-Origin'] = '*'

    @index_flight_destination = Flight.where destination: params[:destination]

    render json: @index_flight_destination, include: [:plane]
  end

  def index_flight_search
    headers['Access-Control-Allow-Origin'] = '*'

    @index_flight_destination = Flight.where origin: params[:origin], destination: params[:destination]

    render json: @index_flight_destination, include: [:plane]
  end

  def show
    @flight = Flight.find params[:id]
   
    render json: @flight, include: [:plane]
    
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
