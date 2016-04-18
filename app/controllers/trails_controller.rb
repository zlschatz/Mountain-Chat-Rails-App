class TrailsController < ApplicationController

  def index
    @mountain = Mountain.find(params[:mountain_id])
    @trails = @mountain.trails.order('name ASC')
    render :index
  end

  def show
    @trail = Trail.find(params[:id])
    @comments = @trail.comments
    @comment = Comment.new
    render :show
  end

end