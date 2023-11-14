class Api::V1::TouristSitesController < ApplicationController

  def index
    sites = TouristSitesFacade.new(params[:country]).sites_in_radius
    if sites == nil
      render json: {data: [], status: 404}
    else
      render json: TouristSiteSerializer.new(sites)
    end
  end
end