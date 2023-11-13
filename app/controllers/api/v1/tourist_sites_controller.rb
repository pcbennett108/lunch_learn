class Api::V1::TouristSitesController < ApplicationController
  def index
    sites = TouristSitesFacade.new(params[:country]).coordinates
  end
end