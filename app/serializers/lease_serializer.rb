class LeaseSerializer < ActiveModel::Serializer
  attributes :id, :rent, :apartment_id, :tenant_id
  has_one :apartment
  has_one :tenant
end
