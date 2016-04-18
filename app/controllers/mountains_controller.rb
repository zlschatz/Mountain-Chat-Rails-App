class MountainsController < ApplicationController

  def index
    @mountains = Mountain.all.order('name ASC')
    render :index
  end

end