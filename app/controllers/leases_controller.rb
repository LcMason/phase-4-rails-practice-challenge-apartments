class LeasesController < ApplicationController

    before_action :find_lease, only: :destroy

    def index
        render json: Lease.all
    end

    #POST /leases
    def create
        lease = Lease.create!(lease_params)
        render json: lease, status: :created
    end

    #DELETE /leases/:id
    def destroy
        @lease.destroy
        head :no_content
    end

    private

    def lease_params
        params.permit(:rent, :apartment_id, :tenant_id)
    end

    def find_lease
        @lease = Lease.find(params[:id])
    end

end
