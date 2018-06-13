class RenameContraception < ActiveRecord::Migration[5.1]
    def self.up
      rename_table :contraception_pills, :contraceptionpills
    end

    def self.down
      rename_table :contraceptionpills, :contraception_pills
    end
end

