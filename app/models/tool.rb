class Tool < ApplicationRecord
  has_many :recipe_tool_maps
  has_many :recipes, through: :recipe_tool_maps
end
