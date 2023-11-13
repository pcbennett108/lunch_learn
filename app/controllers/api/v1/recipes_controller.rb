class Api::V1::RecipesController < ApplicationController
  def index
    recipes_found = RecipeFacade.new(params[:country]).searched_recipes
    render json: SearchedRecipeSerializer.new(recipes_found)
  end
end