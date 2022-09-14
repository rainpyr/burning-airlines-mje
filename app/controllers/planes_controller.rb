class PlanesController < ApplicationController
  def new
  end

  def create
  end

  def index
    @planes = Plane.all
    @planes.each do |plane|
      @rowArr = (1..plane.rows).to_a
      @colArr = (1..plane.cols).to_a
    end
    @nums = (1..20).to_a
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
