class Api::V1::MaterialGroupsController < ApplicationController
  def index
    @material_groups = MaterialGroup.all.preload(:materials)
  end
end
