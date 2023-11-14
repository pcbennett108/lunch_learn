class Api::V1::AirQualityController < ApplicationController

  def show
    air_quality = AirQualityFacade.new(params[:country]).quality_at_location
    if air_quality == nil
      render json: {data: [], status: 404}
    else
      render json: AirQualitySerializer.new(air_quality)
    end
  end
end