class Api::TripsController < ApplicationController
  def create
    @stop = Trip.new(
      stadium_id: params[:stadium_id],
      schedule_id: params[:schedule_id]
    )
    @trip.save
    render "show.json.jbuilder"
  end
end
