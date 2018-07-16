class Contraceptionpill < ApplicationRecord
  require 'csv'

    scope :brand, -> (brand) { where brand: brand }
    scope :country, -> (country) { where country: country }
    scope :ingredient, -> (ingredient) { where ingredient: ingredient }
    scope :equivalent, -> (equivalent) { where equivalent: equivalent }



  def self.import(file)
    CSV.foreach(file, headers: true) do |row|
      Contraceptionpill.create! row.to_hash
    end
  end
end
