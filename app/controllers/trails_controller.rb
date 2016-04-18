class TrailsController < ApplicationController

  def index
    @mountain = Mountain.find(params[:mountain_id])
    @trails = @mountain.trails.order('name ASC')
    render :index
  end

  def show
    @trail = Trail.find(params[:id])
    @comments = sort_comments_by_votes(@trail.comments)
    @comment = Comment.new
    render :show
  end

  private

  def sort_comments_by_votes(comments)
    comments.sort_by { |comment| [comment.votes.count, comment.created_at] }.reverse
  end

end