class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: current_user.id)
  end

  private

  def user_params
    user_params = params.require(:user).permit(:name, :email, :password)
  end

end
