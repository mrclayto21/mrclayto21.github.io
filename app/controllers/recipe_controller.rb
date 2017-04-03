class RecipeController < ApplicationController
  def new
    @recipe = Recipe.new
  end
  
  def add
    @recipe = Recipe.new(recipe_params)
    byebug
    
    if @recipe.save
      byebug
      redirect_to @recipe
    else
      render 'new'
    end
  end
  
  def edit
    @recipe = Recipe.find(params[:id])
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end
  
  def delete
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    
    redirect_to recipe_path
  end
end

private
    def recipe_params
      params.require(:recipe).permit(:title, :text)
    end
end