class CommentsController < ApplicationController

  def new
    # binding.pry
    @trail = Trail.find(params[:trail_id])
    render :new
  end

end