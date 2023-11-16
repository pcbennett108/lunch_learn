class Api::V1::RecipesController < ApplicationController

  def index
    recipes_found = RecipeFacade.new(params[:country]).searched_recipes
    if !recipes_found.empty?
      render json: RecipeSerializer.new(recipes_found)
    else
      render json: {data: [], status: 404}
    end
  end
end