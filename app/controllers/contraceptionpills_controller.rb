class ContraceptionpillsController < ApplicationController
      def index
        if params[:query].present?
          sql_query = "(ingredient ILIKE :ingredient) AND (country ILIKE :country) OR (country ILIKE :country) and (name ILIKE :query) AND (ingredient ILIKE :ingredient)"
          @contraceptionpills = Contraceptionpill.where(sql_query, query: "%#{params[:query]}%", country: "%#{params[:country]}%" , ingredient: "%#{params[:ingredient]}%")
        else
          @contraceptionpills = Contraceptionpill.all
        end
      end

  def import
    Contraceptionpill.import(params[:file].path)
    redirect_to root_url , notice: "Data imported"
  end
end

