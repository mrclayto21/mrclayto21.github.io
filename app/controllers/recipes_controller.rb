class RecipesController < ApplicationController
  def new
  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    
    @recipe.save
    redirect_to @recipe
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end
  
  def index 
    @recipes = Recipe.all
  end
end

private 
  def recipe_params
    params.require(:recipe).permit(:user, :name, :prime, :secondary, :ingredients, :directions, :prep, :completed)
  end