class Api::StadiumsController < ApplicationController

  def index
    @stadiums = Stadium.all
    render "index.json.jbuilder"
  end

  def show
    stadium_id = params[:id]
    @stadium = Stadium.find(stadium_id)
    render "show.json.jbuilder"
  end
end
