class Api::RatingsController < ApplicationController
  def create
    @rating = Rating.new(
      stadium: params[:stadium],
      atmosphere: params[:atmosphere],
      concessions: params[:concessions],
      extras: params[:extras], 
      fans: params[:fans], 
      notes: params[:notes] 
      )
    if @rating.save
      render "show.json.jbuilder"
    else
      render json: {message: "Rating not saved"}
    end
  end
end
