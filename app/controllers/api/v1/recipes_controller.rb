class Api::V1::RecipesController < ApplicationController
  LATEST_RECIPE_LIMIT = 10

  def index
    @recipes = Recipe.all.preload(:color, :technique, :type, :taste)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def latests
    @recipes = Recipe
      .preload(:color, :technique, :type, :taste)
      .order(created_at: :desc)
      .limit(LATEST_RECIPE_LIMIT)
  end
end
