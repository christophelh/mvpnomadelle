class CreateContraceptionPills < ActiveRecord::Migration[5.1]
  def change
    create_table :contraception_pills do |t|

      t.timestamps
    end
  end
end
