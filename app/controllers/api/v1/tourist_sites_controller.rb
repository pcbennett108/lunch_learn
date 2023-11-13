class Api::V1::TouristSitesController < ApplicationController
  
  def index
    sites = TouristSitesFacade.new(params[:country]).coordinates
    if !sites.empty?
      #
    else
      render json: {data: [], status: 404}
    end
  end
end