class Api::PlantsController < ApplicationController

  before_action :set_plant, only: [:show, :update, :destroy]

  def index
    @location = Location.find_by(id: params[:location_id])
    render json: @location.plants
  end

  def create
    plant = Plant.new(plant_params)
    if plant.save
      render json: plant
    else
      render json: { message: plant.errors }, status: 400
    end
  end

  def show
    render json: @plant
  end

  def destroy
    if @plant.destroy
      render status: 204
    else
      render json: { message: "Unable to delete this saved plant." }, status: 400
    end
  end

  private

    def set_plant
      @plant = Plant.find_by(id: params[:id])
    end

    def plant_params
      params.permit(:name, :number, :potted, :planted, :location_id)
    end
end
