class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        if @user = User.create(user_params)
            flash[:notice] = "Account created successfully!"
            redirect_to user_path(@user)
        else
            flash.now[:error] = "Username already taken please choose a different one!"
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update

    end

    def show
        @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end

    def require_login
        return head(:forbidden) unless session.include? :user_id
    end

end
