class CategoriesController < ApplicationController
  def new
    @category = Category.create!(:name => params[:name])
    if params[:parent_id] != nil
          @category = move_to_child_of(Category.find(params[:parent_id]))
    end

  end

  def index
    @hierarchies = Category.roots
    @categories = Category.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render json: @categories }
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
  end

end
