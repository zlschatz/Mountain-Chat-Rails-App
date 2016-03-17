class CommentsController < ApplicationController

  def new
    @trail = Trail.find(params[:trail_id])
    @comment = Comment.new
    render :new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to trail_path(:id => params[:trail_id])
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content,:user_id,:trail_id)
  end

end