class Api::V1::MaterialsController < ApplicationController
  def index
    @materials = Material.all
  end

  def show
    @material = Material.find(params[:id])
    @material_recipes = Recipe.active.where(id: RecipeMaterialMap.where(material_id: @material.id).pluck(:recipe_id))
  end
end
