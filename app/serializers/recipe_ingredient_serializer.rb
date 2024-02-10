class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :name, :quantity, :unit

  def name
    object.ingredient.name
  end

end
