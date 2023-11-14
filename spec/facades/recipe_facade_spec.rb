require 'rails_helper'

RSpec.describe RecipeFacade, type: :facade do
  describe 'Instance methods' do
    let(:query) { "Thailand" }
    let(:facade) { RecipeFacade.new(query) }

    it 'can create an array of recipe objects', :vcr do
      response = facade.searched_recipes

      expect(response).to be_a(Array)
      expect(response[0]).to be_a(SearchedRecipes)
    end
  end
end