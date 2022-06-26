class SessionsController < ApplicationController

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = 'Logged in successfully'
            redirect_to root_path
        else
            flash.now[:alert] = 'Invalid email/password combination'
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = 'Logged out successfully'
        redirect_to root_path
    end


end