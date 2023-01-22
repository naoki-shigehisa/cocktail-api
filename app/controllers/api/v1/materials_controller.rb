class Api::V1::MaterialsController < ApplicationController
  def index
    @materials = Material.all
  end
end
