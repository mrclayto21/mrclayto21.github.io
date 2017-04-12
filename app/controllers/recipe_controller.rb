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
  
  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
        
        if @recipe.update(recipe_params)
            redirect_to root
        else
            render 'add'
        end
  end
  
  def destroy 
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    
    redirect_to root
  end
  
private
    def recipe_params
      params.require(:recipe).permit(:title, :ingredients, :directions, :tags)
    end
end