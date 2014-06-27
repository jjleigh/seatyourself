class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def new
  	@category = Category.new
  end

  def create 
  end 

  def edit
  	@category = Category.find(params[:id])
  end

  def show
  	@category = Category.find(params[:id])
  end
end
