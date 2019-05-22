class Api::UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    render json: User.all
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: { message: user.errors }, status: 400
    end
  end

  def show
    render json: @user
  end

  private

    def set_user
      @user = User.find_by(id: params[:id])
    end

    def user_params
      params.permit([:email])
    end

end
