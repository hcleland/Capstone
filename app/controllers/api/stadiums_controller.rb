class Api::StadiumsController < ApplicationController

  def index
    # @stadiums = Stadium.all
    user_input = params[:search]
    if user_input
      @stadiums = Stadium.where('name LIKE ?', "%#{user_input}%").order(:id => :asc)
    else 
      @stadiums = Stadium.all
    end
    render "index.json.jbuilder"
  end

  def show
    stadium_id = params[:id]
    @stadium = Stadium.find_by(id: stadium_id)
    render "show.json.jbuilder"
  end
end
