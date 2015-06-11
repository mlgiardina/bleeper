class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @bleeps = Bleep.all
    @new_bleep = Bleep.new
    @user = User.find_or_create_by(user_params)
    render 'bleeps/index.html.erb'
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end


end
