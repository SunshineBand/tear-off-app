class CategoryController < ApplicationController

  def index
    @categories = Category.all
  end
  def show
    @category = Category.find params[:id]
    @projects = Project.all
  end
end
