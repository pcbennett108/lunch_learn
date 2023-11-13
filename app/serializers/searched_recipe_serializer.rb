class SearchedRecipeSerializer
  include JSONAPI::Serializer
  attributes :title,
            :url,
            :country,
            :image
end