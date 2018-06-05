class Pill < ApplicationRecord
  require 'csv'

  def self.import(file)
    CSV.foreach(file, headers: true) do |row|
      Pill.create! row.to_hash
    end
  end
end
