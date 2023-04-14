class HomeController < ApplicationController

  def index
    user_id = session[:user_id]
    @user = User.find_by(id: user_id)

    if @user.present?
      @nick = @user.nick
      @messages = Message.all
      
    else
      redirect_to root_path
    end    
  end

end
