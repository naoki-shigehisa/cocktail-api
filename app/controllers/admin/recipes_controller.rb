class Admin::RecipesController < Admin::ApplicationController
  RECIPES_PER_PAGE = 10

  def index
    @recipes = Recipe.order(:id).page(params[:page]).per(RECIPES_PER_PAGE)
  end
end
