class CityController < ApplicationController
  def show
    @city = City.find(params[:id])
    @gossips = Gossip.joins(user: :city).where(cities: { id: @city.id })
    puts "$" * 150
    puts @gossips
    puts "$" * 150
  end
end
