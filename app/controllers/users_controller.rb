class UsersController < ApplicationController
    def new

    end

    def create
        user = User.new(user_params)
        user.password = user_params[:password]
        user.save
        if user.valid?
            session[:user_id] = user.id
            

        else
            redirect_to new_user_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end

