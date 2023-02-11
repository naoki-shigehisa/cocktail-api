class Api::V1::MaterialsController < ApplicationController
  def index
    @materials = Material.all
  end

  def show
    @material = Material.find(params[:id])
  end
end
