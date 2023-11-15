class Api::V1::LearningResourcesController < ApplicationController
  def show
    resource = LearningResourceFacade.new(params[:country]).get_resources
  end
end