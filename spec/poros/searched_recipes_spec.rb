require 'rails_helper'

RSpec.describe 'SearchedRecipesPoro' do
  it 'creates a recipe poro based on attributes' do
    attr = {
          recipe: 
          { label: "Andy Ricker's Naam Cheuam Naam Taan",
            source:"Serious Eats",
            url: "www.website.com", 
            co2EmissionsClass: "B",
            image: "image.jpg"}
          }

    recipe = SearchedRecipes.new(attr, "Thailand")

    expect(recipe).to be_a(SearchedRecipes)
    expect(recipe.title).to eq("Andy Ricker's Naam Cheuam Naam Taan")
    expect(recipe.url).to eq("www.website.com")
    expect(recipe.country).to eq("Thailand")
    expect(recipe.image).to eq("image.jpg")
  end
end