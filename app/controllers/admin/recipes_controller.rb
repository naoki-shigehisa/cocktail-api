class Admin::RecipesController < Admin::ApplicationController
  RECIPES_PER_PAGE = 10

  def index
    @recipes = Recipe.order(:id).page(params[:page]).per(RECIPES_PER_PAGE)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    # TBD
    # @recipe = Recipe.find(params[:id])
    # if @recipe.update(recipe_params)
    #   redirect_to admin_recipe_path(@recipe)
    # else
    #   render :show
    # end
    @recipe = Recipe.find(params[:id])
  end

  # TBD
  # private def recipe_params
  #   params.require(:recipe).permit(:name, :description)
  # end
end
