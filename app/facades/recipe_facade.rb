class RecipeFacade
  attr_reader :country

  def initialize(country)
    if country.empty?
      @country = CountryFacade.sample_country.sample.name
    else
      @country = country 
    end
  end

  def searched_recipes
    data = RecipeService.new.recipes_by_country(@country)
    data[:hits].map do |recipe_data|
      SearchedRecipes.new(recipe_data, @country)
    end
  end
end