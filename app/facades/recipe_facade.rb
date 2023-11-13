class RecipeFacade
  attr_reader :country

  def initialize(country)
    @country = country 
  end

  def searched_recipes
    data = RecipeService.new.recipes_by_country(@country)
    data[:hits].map do |recipe_data|
      SearchedRecipes.new(recipe_data)
    end
  end

end