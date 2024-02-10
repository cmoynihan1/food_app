class RecipeDetailSerializer < RecipeSerializer
  attributes :title, :ingredients,

  def ingredients
    ActiveModelSerializers::SerializableResource.new(object.recipe_ingredients, each_serializer: RecipeIngredientSerializer)
  end

end
