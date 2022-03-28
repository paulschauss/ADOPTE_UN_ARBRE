class AdoptionsController < ApplicationController
  def create
    @tree = Tree.find(params[:tree_id])
    @adoption = Adoption.new(adoption_params)
    @adoption.tree = @tree
    @adoption.user = current_user
    @adoption.starts_at = Time.now.to_date
    @adoption.ends_at = Time.now.to_date + 1.year
    @adoption.save

    redirect_to tree_path(@tree)
  end

  private

  def adoption_params
    params.require(:adoption).permit(:name)
  end
end
