json.extract! delivery_info, :id, :address1, :address2, :phone, :customer_id, :created_at, :updated_at
json.url delivery_info_url(delivery_info, format: :json)
