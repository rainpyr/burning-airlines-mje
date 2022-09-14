class PlanesController < ApplicationController

  # React frontend, so we wont have this token
  skip_before_action :verify_authenticity_token, raise:false

  def new
    @plane = Plane.new
  end

  def create
    Plane.create plane_params

    redirect_to planes_path
  end

  def index
    @planes = Plane.all
    
  end

  def json
    headers['Access-Control-Allow-Origin'] = '*'


    render json: Plane.all
  end

  def show
    @plane = Plane.find params[:id]

    render json: @plane
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def plane_params
    params.require(:plane).permit(:name, :rows, :cols)
  end

end
