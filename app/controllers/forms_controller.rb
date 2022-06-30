module Admin
class FormsController < ApplicationController
    def index
    end
    
    def new
        @form = Form.new
    end

    def create
        @form = Form.new(form_params)
        if @form.save
            flash[:success] = "Form created successfully"
            redirect_to root_path
        else
            render 'new'
        end
    end

    private
    def form_params
        params.require(:form).permit(:height, :weight, :activity)
    end
end
end