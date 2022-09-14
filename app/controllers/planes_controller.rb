class PlanesController < ApplicationController
  before_action :check_if_logged_in

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
    render json: Plane.all
  end

  def show
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
