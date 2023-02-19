class Recipe < ApplicationRecord
  has_many :recipe_steps
  has_many :recipe_material_maps
  has_many :recipe_tool_maps
  has_many :tools, through: :recipe_tool_maps
  belongs_to :color
  belongs_to :technique
  belongs_to :type
  belongs_to :taste
end
