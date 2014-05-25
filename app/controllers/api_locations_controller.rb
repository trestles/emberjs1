class ApiLocationsController < ApplicationController
  def show
    @location=Location.find(params[:id])
    render json: @location, serializer: LocationSerializer, root: false
  end 	

  def index
    @location=Location.all
    render json: @location, each_serializer: LocationSerializer, root: false
  end 	


end
