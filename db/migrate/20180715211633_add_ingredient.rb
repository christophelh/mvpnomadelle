class AddIngredient < ActiveRecord::Migration[5.1]
  def change
    add_column :contraceptionpills, :ingredient, :string
  end
end
