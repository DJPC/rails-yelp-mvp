class RestaurantsController < ApplicationController


# RestaurantsController GET index assigns all restaurants as @restaurants
# RestaurantsController GET show assigns the requested restaurant as @restaurant
# RestaurantsController GET new assigns a new restaurant as @restaurant
# RestaurantsController POST create with valid params creates a new Restaurant
# RestaurantsController POST create with valid params assigns a newly created restaurant as @restaurant
# RestaurantsController POST create with valid params redirects to the created restaurant
# RestaurantsController POST create with invalid params assigns a newly created but unsaved restaurant as @restaurant
# RestaurantsController POST create with invalid params re-renders the 'new' template

def index
  @restaurants = Restaurant.all
end

def show
  @restaurant = Restaurant.find(params[:id])
end

def new
end

def create
  @restaurant = Restaurant.new(name: params[:name], address: params[:address], phone_number: params[:phone_number], category: [:category])
  @restaurant.save
end


end


