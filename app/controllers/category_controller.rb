class CategoryController < ApplicationController
  def show
    @category = Category.find params[:id]
    @projects = Project.all
  end
end
