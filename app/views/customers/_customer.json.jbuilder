json.extract! customer, :id, :email, :password, :name, :mobile, :country, :dob, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
