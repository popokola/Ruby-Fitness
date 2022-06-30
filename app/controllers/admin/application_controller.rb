module Admin
    class ApplicationController < Administrate::ApplicationController
        before_action :authenticate_admin
        helper_method :current_user, :logged_in?
        def authenticate_admin
            # TODO Add authentication logic here.
        end
    end
end