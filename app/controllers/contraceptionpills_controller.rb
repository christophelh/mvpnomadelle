class ContraceptionpillsController < ApplicationController
      def index

          # sql_query = "(country ILIKE :country) OR (name ILIKE :query) OR (ingredient ILIKE :ingredient)"



          # @contraceptionpills = Contraceptionpill.where(sql_query, query: "%#{params[:query]}%", country: "%#{params[:country]}%" , ingredient: "%#{params[:ingredient]}%")

          @contraceptionpills = Contraceptionpill.where(nil) # creates an anonymous scope

          @contraceptionpills = @contraceptionpills.country(params[:country]) if params[:country].present?

          @contraceptionpills = @contraceptionpills.ingredient(params[:ingredient]) if params[:ingredient].present?

          @contraceptionpills = @contraceptionpills.brand(params[:brand]) if params[:brand].present?



      end

  def import
    Contraceptionpill.import(params[:file].path)
    redirect_to root_url , notice: "Data imported"
  end
end

