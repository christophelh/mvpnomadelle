class AddColumnsToContraceptionpills < ActiveRecord::Migration[5.1]
  def change
    add_column :contraceptionpills, :name, :string
    add_column :contraceptionpills, :country, :string
    add_column :contraceptionpills, :equivalent, :string
  end
end
