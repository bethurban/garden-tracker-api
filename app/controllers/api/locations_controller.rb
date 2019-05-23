class Api::LocationsController < ApplicationController

  before_action :set_location, only: [:show, :update, :destroy]

  def index
    render json: Location.all
  end

  def create
    location = Location.new(location_params)
    if location.save
      render json: location
    else
      render json: { message: location.errors }, status: 400
    end
  end

  def show
    render json: @location
  end

  def destroy
    if @location.destroy
      render status: 204
    else
      render json: { message: "Unable to delete this saved location." }, status: 400
    end
  end

  private

    def set_location
      @location = Location.find_by(id: params[:id])
    end

    def location_params
      params.permit([:name, :user_id])
    end

end
