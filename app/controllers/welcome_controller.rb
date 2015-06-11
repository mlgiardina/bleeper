class WelcomeController < ApplicationController

  def index
    begin
      @user = User.new
      render 'welcome/index.html.erb'
    rescue StandardError
      render 'welcome/index.html.erb'
  end

end
