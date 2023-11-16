class Api::V1::LearningResourcesController < ApplicationController
  def index
    resources = LearningResourceFacade.new(params[:country]).get_resources
    render json: LearningResourceSerializer.new(resources)
  end
end