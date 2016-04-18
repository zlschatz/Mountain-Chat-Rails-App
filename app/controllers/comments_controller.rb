class CommentsController < ApplicationController

  def new
    @trail = Trail.find(params[:trail_id])
    @comment = Comment.new
    if request.xhr?
      render :_form, locals: {comment: @comment}, layout: false
    else
      render :new
    end
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to trail_path(:id => params[:comment][:trail_id])
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    trail_id = @comment.trail.id
    @comment.destroy
    redirect_to trail_path(trail_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content,:user_id,:trail_id)
  end

end