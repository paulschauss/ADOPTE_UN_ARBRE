class TreesController < ApplicationController
  def index
    @trees = Tree.all
    # if params[:query].present?
    #   @tree = Tree.where(name: params[:query])
    # end
    if params[:query].present?
      @trees = @trees.where("address ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show
    @tree = Tree.find(params[:id])
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

  private

  def tree_params
    params.require(:tree).permit(:name, :address, :price, :quantity_per_year, :fruit, :description, :short_description)
  end
end
