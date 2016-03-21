class VotesController < ApplicationController

  def create
    @comment = Comment.find(params[:comment_id])
    @vote = Vote.new(value: 1, comment_id: params[:comment_id], user_id: current_user.id)
    if !@comment.votes.find_by(user_id: current_user.id) && @vote.save
      redirect_to trail_path(@vote.comment.trail.id)
    else
      redirect_to trail_path(@vote.comment.trail.id)
    end
  end

  def destroy
  end

end