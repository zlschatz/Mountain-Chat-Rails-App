class CommentsController < ApplicationController

  def new
    # binding.pry
    @trail = Trail.find(params[:trail_id])
    @comments = @trail.comments
    render :new
  end

end