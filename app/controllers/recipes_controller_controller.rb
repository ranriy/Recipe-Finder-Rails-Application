class RecipesControllerController < ApplicationController
  
  def index

  	if not params[:search]
  		@search_term = "chocolate" 
  	else
  		@search_term = params[:search] 
  	end

  	@recipes = Recipe.for(@search_term)
  end

end
