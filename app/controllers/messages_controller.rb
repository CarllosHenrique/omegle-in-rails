class MessagesController < ApplicationController
    before_action :find_user

    def create
        @message = @current_user.messages.create(message_params)
    end


    private

        def find_user
            user = session[:user_id]
            @current_user = User.find_by(id: user)
            @messages = Message.all
        end


        def message_params
            params.require(:message).permit(:content, :user_id)
        end

end
