class TenantsController < ApplicationController

    before_action :find_tenant, only: [:update, :destroy]

    #GET /tenants
    def index
        render json: Tenant.all
    end

    #POST /tenants
    def create
        tenant = Tenant.create!(new_tenants)
        render json: tenant, status: :created
    end

    #PATCH /tenants/:id
    def update
        @tenant.update!(new_tenants)
        render json: @tenant, status: :accepted

    end

    #DELETE /tenants/:id
    def destroy
        @tenant.destroy
        head :no_content
    end

    private

    def new_tenants
        params.permit(:name, :age)
    end

    def find_tenant
        @tenant = Tenant.find(params[:id])
    end



end
