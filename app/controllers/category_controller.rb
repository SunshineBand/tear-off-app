class CategoryController < ApplicationController

  def index
    @categories = Category.all
  end
  def show
    @category = Category.find(params[:id])
    @category_flyers = @category.flyers.search(params[:title])
    p "HERE"
    p @category_flyers
    @projects = Project.all
  end
end
