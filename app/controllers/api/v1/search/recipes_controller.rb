class Api::V1::Search::RecipesController < ApplicationController
  def index
    material_ids = params[:material_ids]

    recipe_ids = RecipeMaterialMap.where(material_id: material_ids).pluck(:recipe_id).uniq
    @recipes = Recipe.where(id: recipe_ids).active
  end
end
