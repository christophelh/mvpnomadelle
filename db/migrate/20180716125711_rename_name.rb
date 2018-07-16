class RenameName < ActiveRecord::Migration[5.1]
    def change
      rename_column :contraceptionpills, :name, :brand
    end
end
