class TimeTrackingsController < ApplicationController

  def index
    @time_trackings = TimeTracking.all

    if params[:start] && params[:end]
      @time_trackings = TimeTracking.where('time >= ? AND time <= ?', get_time(params[:start]), get_time(params[:end]))
    end
  end

  def new
    @timetracking = TimeTracking.new
    @geofences = Geofence.all.map { |geofence| [geofence.latitude, geofence.longitude, geofence.radius] }
  end

  def create
    @timetracking = TimeTracking.create(timetracking_params)
    redirect_to time_trackings_path
  end

  def show

  end


  def timetracking_params
    params.require(:time_tracking).permit(:comment, :latitude, :longitude)
  end

  private

  def get_time(date)
    # solução baseada na seguinte resposta de https://stackoverflow.com/a/30543697
    Time.strptime(date, "%m/%d/%Y %I:%M %p")
  end
end