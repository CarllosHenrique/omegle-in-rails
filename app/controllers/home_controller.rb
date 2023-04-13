class HomeController < ApplicationController

  def index
    user_id = session[:user_id]
    @user = User.find_by(id: user_id)
    if @user.present?
      @nick = @user.nick
    else
      redirect_to root_path
    end

    @messages = Message.all
  end

end
