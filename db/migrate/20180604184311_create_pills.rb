class CreatePills < ActiveRecord::Migration[5.1]
  def change
    create_table :pills do |t|
      t.string :name
      t.string :model
      t.string :country

      t.timestamps
    end
  end
end
