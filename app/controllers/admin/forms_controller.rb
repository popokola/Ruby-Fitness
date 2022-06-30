class FormsController < ApplicationController
    def index
    end
  
    def new
        @user = User.new
    end


    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "User created successfully"
            redirect_to root_path
        else
            render 'new'
        end
    end
end
