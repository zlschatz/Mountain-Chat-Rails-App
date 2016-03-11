class TrailsController < ApplicationController

  def index
    # binding.pry
    @trails = Trail.find([params[:mountain_id]])
    render :index
  end

end