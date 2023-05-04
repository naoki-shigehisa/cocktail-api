class Api::V1::RecipesController < ApplicationController
  LATEST_RECIPE_LIMIT = 10

  def index
    @recipes = Recipe.all.preload(recipe_material_maps: [:material])
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def latests
    @recipes = Recipe
      .preload(recipe_material_maps: [:material])
      .order(created_at: :desc)
      .limit(LATEST_RECIPE_LIMIT)
  end
end
