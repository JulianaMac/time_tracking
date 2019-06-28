class GeofencesController < ApplicationController

  def index
    @geofences =  Geofence.all
  end

def new
  @geofence = Geofence.new
end

def create
  @geofence = Geofence.create(geofence_params)
  redirect_to geofences_path
end

def show
  @geofence = Geofence.find(params[:id])
end

private

  def geofence_params
    params.require(:geofence).permit(:latitude, :longitude, :radius)
  end

end