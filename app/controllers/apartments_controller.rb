class ApartmentsController < ApplicationController


    #GET /apartments
    def index
        render json: Apartment.all
    end


    #POST /apartments
    def create
        apartment = Apartment.create!(params[:number])
        render json: apartment, status: :created
    end

    #PATCH /apartments/:id
    def update
    end

    #DELETE /apartments/:id
    def destroy
    end

    private

    def find_apartment
        @apartment = Apartment.find(params[:id]) 
    end

    # def params_permit
    #     params.permit(:number)
    # end



end
