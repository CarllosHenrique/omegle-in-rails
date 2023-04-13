class MessagesController < ApplicationController

    def create
        user = session[:user_id]
        current_user = User.find_by(id: user)

        @message = current_user.messages.create(message_params)
        redirect_to chat_path
    
    end
    



    private

        def message_params
            params.require(:message).permit(:content, :user_id)
        end

end
