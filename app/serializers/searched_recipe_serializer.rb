class SearchedRecipeSerializer
  include JSONAPI::Serializer
  attributes :title,
            :url,
            :image
end