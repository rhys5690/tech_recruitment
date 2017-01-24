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

        @user = User.new(user_params)

        @name = params[:name]
        @front_back = params[:front_back]
        @relevant_technologies = params[:relevant_technologies]
        @years_experience = params[:years_experience]
        @company_size = params[:company_size]
        @description = params[:description]
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

        # respond_to do |format|
            if @user.save
       # The line below is the only additional line we need in our Users controller.
                UserMailer.welcome(@user).deliver_now
                # format.html { redirect_to home_path, notice: 'User was successfully created.' }
                render :json => @response
            #
            # else
            #     format.html { render :new }
            #     format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        # end
    end

    private
        def user_params
            params.permit(:name, :front_back, :relevant_technologies, :years_experience, :company_size, :description, :email)
        end
end
