class ContraceptionpillsController < ApplicationController
      def index
        if params[:query].present?
          sql_query = "name ILIKE :query AND country ILIKE :country"
          @contraceptionpills = Contraceptionpill.where(sql_query, query: "%#{params[:query]}%", country: "%#{params[:country]}%")
        else
          @contraceptionpills = Contraceptionpill.all
        end
      end
end

