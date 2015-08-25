require "administrate/base_dashboard"

class CustomerDashboard < Administrate::BaseDashboard
  ATTRIBUTES = [
    :name,
    :email,
    :lifetime_value,
    :orders,
    :created_at,
    :updated_at,
  ]

  ATTRIBUTE_TYPES = {
    created_at: Field::String,
    email: Field::Email,
    lifetime_value: Field::String,
    name: Field::String,
    orders: Field::HasMany,
    updated_at: Field::String,
  }

  TABLE_ATTRIBUTES = ATTRIBUTES
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTES - [:name]
  FORM_ATTRIBUTES = [:name, :email]
end
