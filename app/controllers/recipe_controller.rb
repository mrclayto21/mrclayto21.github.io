class RecipeController < ApplicationController
  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else 
      render 'new'
    end
  end

private
    def recipe_params
      params.require(:recipe).permit(:title, :ingredients, :directions)
    end
end