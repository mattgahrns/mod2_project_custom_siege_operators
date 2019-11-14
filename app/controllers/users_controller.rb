class UsersController < ApplicationController

    before_action :authorize, only: [:edit, :delete]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            flash[:notice] = "Account created successfully!"
            session[:user_id] = @user.id.to_s
            redirect_to user_path(@user)
        else
            flash[:error] = "Username already taken please choose a different one!"
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
        if @user.id.to_s != session[:user_id]
            flash[:notice] = "You can't edit other users!"
            redirect_to user_path(@user)
        end
    end

    def update
        @user = User.find(params[:id])
        
        if @user.update(user_params)
            flash[:notice] = "Account details updated successfully!"
            redirect_to user_path(@user)
        else
            flash.now[:error] = "Username already taken please choose a different one!"
            render :edit
        end

    end

    def show
        @user = User.find(params[:id])
    end

    def delete
        @user = User.find(params[:id])
        if @user.id.to_s != session[:user_id]
            flash[:notice] = "You can't delete other users!"
            redirect_to user_path(@user)
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        session.delete(:user_id)
        redirect_to login_path, notice: "Logged out!"
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end

    def require_login
        return head(:forbidden) unless session.include? :user_id
    end

end
