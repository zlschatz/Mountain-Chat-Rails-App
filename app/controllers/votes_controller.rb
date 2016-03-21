class VotesController < ApplicationController

  def create
    @vote = Vote.new(value: 1, comment_id: params[:comment_id], user_id: current_user.id)
    if @vote.save
      redirect_to trail_path(@vote.comment.trail.id)
    else
      redirect_to trail_path(@vote.comment.trail.id)
    end
  end

  def destroy
  end

end