class UsersController < ApplicationController

    def new
        @user = User.new


        @users = User.all
    end

    def create
        @user = User.create(user_params)

        if @user.save
            session[:user_id] = @user.id
            redirect_to chat_path
          else
            render :new
            flash[:error] = "Sorry try later..."
          end
        
    end


    def destroy
        user = session[:user_id]
        @current_user = User.find_by(id: user)
        
        @current_user.destroy
        redirect_to root_path
    end
    


    private
    

    def user_params
        params.require(:user).permit(:nick)
    end
    

end
