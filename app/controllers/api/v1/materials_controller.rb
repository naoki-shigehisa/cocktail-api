class Api::V1::MaterialsController < ApplicationController
  def index
    @materials = Material.all
  end

  def show
    @material = Material.find(params[:id])
    @material_recipes = Recipe.active.where(id: RecipeMaterialMap.where(material_id: @material.id).pluck(:recipe_id)).reverse
  end

  def random
    @materials = Material.shuffle(random: Random.new(Time.zone.now.beginning_of_day.to_i)).first(10)
  end
end
