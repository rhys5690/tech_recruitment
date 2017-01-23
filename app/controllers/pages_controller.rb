class PagesController < ApplicationController

    # Define a method (or "action") called "home" in this controller.
    def home

        @response = {
          :name => @name,
          :front_back => @front_back,
          :relevant_technologies => @relevant_technologies,
          :years_experience => @years_experience,
          :company_size => @company_size,
          :description => @description,
          :email => @email
        }

        respond_to do |format|
          format.html # This will render generator.html.erb in response to requests for HTML
          format.json { render json: @response } # This will render JSON in response to AJAX requests
        end
    end
end
