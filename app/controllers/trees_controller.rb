class TreesController < ApplicationController
  before_action :set_tree, only: [:edit, :update, :show]

  def index
    @trees = Tree.all
  end

  def show
  end

  def new
    @tree = Tree.new
  end

  def create
    @user = current_user
    @tree = Tree.new(tree_params)
    @tree.user = @user
    if @tree.save
      redirect_to tree_path(@tree)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @tree.update(tree_params)
    redirect_to tree_path(@tree)
  end

  private

  def tree_params
    params.require(:tree).permit(:name,
                                 :address,
                                 :price,
                                 :quantity_per_year,
                                 :fruit,
                                 :description,
                                 :short_description,
                                 :photo)
  end

  def set_tree
    @tree = Tree.find(params[:id])
  end
end
