class AttractionsController < ApplicationController
  def show
  end

  def index
    @attractions = Attraction.all
  end

  def edit
  end

  def new
  end

end
