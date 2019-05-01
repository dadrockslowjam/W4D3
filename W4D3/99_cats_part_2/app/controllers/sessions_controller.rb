class SessionsController < ApplicationController
    def new
        render :new
    end
    
    def create
        user = User.find_by_credentials(params[:user][:username],params[:user][:password])
        if user
            login!(user)
            redirect_to cats_url
        else
            flash.now[:errors] = ["INVALID NAME OR PASSWORD"]
            render :new
        end
    end

    def destroy
        self.current_user.reset_session_token! unless self.current_user
        
    end
end