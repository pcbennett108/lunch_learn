class Api::V1::AirQualityController < ApplicationController

  def show
    air_quality = AirQualityFacade.new(params[:country]).quality_at_location
    require "pry" ; binding.pry
  end
end