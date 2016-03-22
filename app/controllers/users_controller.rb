class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def show
    @user = User.find_by(id: current_user.id)
    render :show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login @user
      redirect_to root_path
    else
      flash[:notice] = "Invalid email or password"
      render new_user_path
    end
  end

  private

  def user_params
    user_params = params.require(:user).permit(:name, :email, :password)
  end

end
