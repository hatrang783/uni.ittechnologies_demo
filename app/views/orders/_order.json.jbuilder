json.extract! order, :id, :orderdate, :point, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
