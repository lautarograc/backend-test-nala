class Api::Exposed::V1::EmployeeSerializer < ActiveModel::Serializer
  type :employee

  attributes(
    :id,
    :full_name,
    :personal_id,
    :email,
    :position,
    :salary,
    :city,
    :country,
    :status,
    :active,
    :starting_date,
    :created_at,
    :updated_at
  )
end
