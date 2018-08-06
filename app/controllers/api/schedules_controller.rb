class Api::SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    render "index.json.jbuilder"
  end
end
