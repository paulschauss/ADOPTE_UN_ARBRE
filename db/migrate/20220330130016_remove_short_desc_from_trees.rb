class RemoveShortDescFromTrees < ActiveRecord::Migration[6.1]
  def change
    remove_column :trees, :short_description, :string
  end
end
