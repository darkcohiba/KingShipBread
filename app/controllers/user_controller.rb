class UserController < ApplicationController
        before_action :select_user_by_id, only: [:show, :destroy, :update]
    # index
    def index
        render json: User.all
    end

    def show
        # user = User.find(params[:id])
        render json: @user
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def update
        user = User.find(params[:id])
        user.update(user_params_update)
        render json: user, status: :accepted

        # @user.update!(user_params_update)
        # render json: @user, status: :accepted
    end

    def destroy
        user = User.find(params[:id])
        user.destroy

        @user.destroy

        head :no_content
    end


    private

    def select_user_by_id
        @user = User.find(params[:id])
    end

    def user_params
        params.permit(:first_name, :last_name, :email, :password_digest, :username)
    end

    def user_params_update
        params.permit( :username)
    end
end


