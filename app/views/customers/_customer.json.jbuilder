json.extract! customer, :id, :username, :password, :points, :created_at, :updated_at
json.url customer_url(customer, format: :json)
