class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def show
    @tree = Tree.find(params[:id])
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.save

    redirect_to tree_path(@tree)
    #render :new
  end

  private

  def tree_params
    params.require(:tree).permit(:name, :address, :price, :quantity_per_year, :fruit, :description, :short_description)
  end
end
