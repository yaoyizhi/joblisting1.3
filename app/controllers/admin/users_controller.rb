class Admin::UsersController < ApplicationController
    before_action :authenticate_user!, only: [:index, :show, :edit, :update, :destroy]
    before_action :require_is_admin
    layout 'admin'

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to admin_users_path
        else
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to admin_users_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :adress, :is_validate, :email)
    end
end
