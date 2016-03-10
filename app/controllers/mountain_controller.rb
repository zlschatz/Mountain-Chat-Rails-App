class MountainsController < ActionController::Base

  def index
    @mountains = Mountain.all
  end

end