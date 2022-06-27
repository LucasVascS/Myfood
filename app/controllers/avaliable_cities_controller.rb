class AvaliableCitiesController < ApplicationController
  def index
    @avaliable_cities = Restaurant.all.map {  |r| r.city  }.uniq
  end
end
