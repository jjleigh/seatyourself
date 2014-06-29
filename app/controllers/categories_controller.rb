class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def new
  end 

  def show
    @cuisine = 
  	@category = Category.find(params[:id])
  end

end
