class ContraceptionpillsController < ApplicationController
      def index
        if params[:query].present?
          sql_query = "(name ILIKE :query) or (country ILIKE :query)"
          @contraceptionpills = Contraceptionpill.where(sql_query, query: "%#{params[:query]}%", country: "%#{params[:country]}%")
        else
          @contraceptionpills = Contraceptionpill.all
        end
      end

  def import
    Contraceptionpill.import(params[:file].path)
    redirect_to root_url , notice: "Data imported"
  end
end

