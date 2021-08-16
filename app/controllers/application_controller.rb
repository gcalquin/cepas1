class ApplicationController < ActionController::Base
    before_action :authenticate_user!


    def authorize_admin!
        unless current_user.admin?
            redirect_to root_path, notice: "Ud no es administrador :("
        end
    end

end
