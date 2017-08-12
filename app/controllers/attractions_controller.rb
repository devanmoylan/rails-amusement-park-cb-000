class AttractionsController < ApplicationController
  def show
    @attraction = Attraction.find(params[:id])
  end

  def index
    @attractions = Attraction.all
  end

  def edit
  end

  def new
    @attraction = Attraction.new
  end

end
