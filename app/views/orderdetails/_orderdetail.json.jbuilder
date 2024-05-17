json.extract! orderdetail, :id, :quantity, :rate, :review, :reviewdate, :order_id, :product_id, :created_at, :updated_at
json.url orderdetail_url(orderdetail, format: :json)
