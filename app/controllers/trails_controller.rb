class TrailsController < ApplicationController

  def index
    @mountain = Mountain.find(params[:mountain_id])
    @trails = @mountain.trails
    render :index
  end

  def show
    @trail = Trail.find(params[:id])
    render :show
  end

end