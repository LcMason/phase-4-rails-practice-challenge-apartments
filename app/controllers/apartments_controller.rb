class ApartmentsController < ApplicationController

    before_action :find_apartment, only: [:update, :destroy]
    #GET /apartments
    def index
        render json: Apartment.all
    end


    #POST /apartment
    def create
        apartment = Apartment.create!(params_permit)
        render json: apartment, status: :created
    end

    #PATCH /apartments/:id
    def update
        @apartment.update!(params_permit)
        render json: @apartment, status: :accepted
    end

    #DELETE /apartments/:id
    def destroy
        @apartment.destroy
        head :no_content
    end

    private

    def find_apartment
        @apartment = Apartment.find(params[:id]) 
    end

    def params_permit
        params.permit(:number)
    end



end
