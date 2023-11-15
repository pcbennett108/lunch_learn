class Api::V1::LearningResourcesController < ApplicationController
  def index
    resource = LearningResourceFacade.new(params[:country]).get_resources
  end
end