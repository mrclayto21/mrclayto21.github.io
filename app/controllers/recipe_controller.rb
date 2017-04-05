class RecipeController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end 
  
  def new

  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    render plain: params[recipe_params].inspect
    @recipe.save
      redirect_to root_path
  end

private
    def recipe_params
      params.require(:recipe).permit(:title, :ingredients, :directions, :tags)
    end
end