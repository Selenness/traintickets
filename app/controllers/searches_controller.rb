class SearchesController < ApplicationController
  before_action :get_stations

  def show
  end

  def perform
    @first_station = RailwayStation.find(params[:first_station])
    @end_station = RailwayStation.find(params[:end_station])
    @first_station_routes = @first_station.railway_stations_routes
    @end_station_routes = @end_station.railway_stations_routes
    @route_ids = @first_station_routes.where(route_id: @end_station_routes.pluck(:route_id)).pluck(:route_id)
    @result = Route.where(id: @route_ids)
    render :show
  end

  private

  def get_stations
    @stations = RailwayStation.all
  end


end