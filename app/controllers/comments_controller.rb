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
    # binding.pry
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if request.xhr? && @comment.save
      # redirect_to trail_path(:id => params[:comment][:trail_id])
      render :_form, locals: {comment: @comment}, layout: false
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content,:user_id,:trail_id)
  end

end