class Contraceptionpill < ApplicationRecord
  require 'csv'


  def self.import(file)
    CSV.foreach(file, headers: true) do |row|
      Contraceptionpill.create! row.to_hash
    end
  end
end
