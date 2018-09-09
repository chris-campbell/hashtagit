class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def user_params
        params.require(:first_name, :last_name).permit(:email, :password, :password_confirmation, :remember_me, :name)
    end
end
