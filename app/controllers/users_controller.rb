class UsersController < ApplicationController

    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json:user, status: :ok
        else
            render json: {error: "User does not exist"}, status: :not_found
        end
    end
end
