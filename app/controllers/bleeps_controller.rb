class BleepsController < ApplicationController

  def index
    if @user
      @bleeps = Bleep.all.order(:created_at)
      @new_bleep = Bleep.new
      @user = params[:user]
      render 'index.html.erb'
    else
      @user = User.new
      render 'welcome/index.html.erb'
    end
  end

  def create
    @new_bleep = Bleep.new
    @bleeps = Bleep.all.order(:created_at)
    @user = User.find(params[:bleep]["user_id"])
    Bleep.create(bleep_params)
    render 'index.html.erb'
  end

  def update
    render 'edit.html.erb'
  end

  def show
    @bleep = Bleep.find(params[:id])
  end

  private

  def bleep_params
    params.require(:bleep).permit(:body, :user_id)
  end

end
