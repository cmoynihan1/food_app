# frozen_string_literal: true

class RecipesController < ApplicationController
  def show
    recipe = Recipe.find_by!(id: permitted_params[:id])
    render json: recipe, serializer: RecipeDetailSerializer
  end

  def permitted_params
    params.permit(:id)
  end
end
