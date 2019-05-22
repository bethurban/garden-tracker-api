class Api::UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: { message: user.errors }, status: 400
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  private

    def user_params
      params.permit([:email])
    end

end
