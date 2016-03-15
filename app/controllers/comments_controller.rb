class CommentsController < ApplicationController

  def new
    @trail = Trail.find(params[:trail_id])
    @comments = @trail.comments
    render :new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user
    if @comment.save
      redirect_to trail_path
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content,:user_id,:trail_id)
  end

end