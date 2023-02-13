class Material < ApplicationRecord
  belongs_to :material_group
  has_many :recipe_material_maps
end
