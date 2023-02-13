class Recipe < ApplicationRecord
  has_many :recipe_steps
  belongs_to :color
  belongs_to :technique
  belongs_to :type
  belongs_to :taste
end
