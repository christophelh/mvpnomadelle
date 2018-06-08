class PillsController < ApplicationController

        def index
          # if params[:query].present?
          #   @pills = Pill.where(name: params[:query])
          if params[:query].present?
              sql_query = "name ILIKE :query OR country ILIKE :query"
              @pills = Pill.where(sql_query, query: "%#{params[:query]}%")
          else
            @pills = Pill.all.sort
          end
        end


        def import
          Pill.import(params[:file].path)
          redirect_to root_url , notice: "Data imported"
        end
end
