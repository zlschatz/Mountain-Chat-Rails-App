class MountainsController < ApplicationController

  def index
    @mountains = Mountain.all
    render :index
  end

end