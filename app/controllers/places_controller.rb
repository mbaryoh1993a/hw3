class PlacesController < ApplicationController

  def index
    @places = ["Mexico City", "Charleston", "Beijing", "Amsterdam"]
      end
end

def new
  @place = Place.new
end

def create
  @place = Place.new
  @place["name"] = params["place"]["name"]
  @place.save

  redirect_to "/places"
end
