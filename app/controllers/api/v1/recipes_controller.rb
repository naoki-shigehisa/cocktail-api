class Api::V1::RecipesController < ApplicationController
  LATEST_RECIPE_LIMIT = 30

  def index
    @recipes = Recipe.all.preload(recipe_material_maps: [:material])
  end

  def show
    @recipe = Recipe.active.find(params[:id])
  end

  def latests
    @recipes = Recipe
      .active
      .preload(recipe_material_maps: [:material])
      .order(created_at: :desc)
      .limit(LATEST_RECIPE_LIMIT)
  end

  def count
    @recipes_count = Recipe.active.count
  end
end
