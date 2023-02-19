class Api::V1::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all.preload(:color, :technique, :type, :taste, :tools, recipe_material_maps: [:material])
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
