class CreateTrees < ActiveRecord::Migration[6.1]
  def change
    create_table :trees do |t|
      t.string :address
      t.string :fruit
      t.text :description
      t.string :short_description
      t.string :name
      t.integer :quantity_per_year
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
