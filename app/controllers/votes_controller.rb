class VotesController < ApplicationController

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      redirect_to trail_path
    else
      redirect_to trail_path
    end
  end

  def destroy
  end

  private

  def vote_params
    params.require(:vote).permit(:value, :user_id, :comment_id)
  end

end