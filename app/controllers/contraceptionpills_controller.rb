class ContraceptionpillsController < ApplicationController
      def index
        if params[:query].present?
          sql_query = "(name ILIKE :query) and (country ILIKE :country)"
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

