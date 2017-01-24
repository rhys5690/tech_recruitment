class PagesController < ApplicationController

    # Define a method (or "action") called "home" in this controller.
    def home

        @name = params[:name],
        @front_back = params[:front_back],
        @relevant_technologies = params[:relevant_technologies],
        @years_experience = params[:years_experience],
        @company_size = params[:company_size],
        @description = params[:description],
        @email = params[:email]

    #     @name = params[:name]
    #
    #     @response = {
    #       :name => @name,
    #       :front_back => @front_back,
    #       :relevant_technologies => @relevant_technologies,
    #       :years_experience => @years_experience,
    #       :company_size => @company_size,
    #       :description => @description,
    #       :email => @email
    #     }
    #
    #     render :json => @response
    # #         respond_to do |format|
    # #             format.html # This will render generator.html.erb in response to requests for HTML
    # #             format.json { render json: @response } # This will render JSON in response to AJAX requests
    # #   end

    end

    def json
        @name = params[:name],
        @front_back = params[:front_back],
        @relevant_technologies = params[:relevant_technologies],
        @years_experience = params[:years_experience],
        @company_size = params[:company_size],
        @description = params[:description],
        @email = params[:email]


        @response = {
          :name => @name,
          :front_back => @front_back,
          :relevant_technologies => @relevant_technologies,
          :years_experience => @years_experience,
          :company_size => @company_size,
          :description => @description,
          :email => @email
        }

        render :json => @response
    end
end
