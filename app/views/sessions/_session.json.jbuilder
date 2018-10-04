json.extract! session, :id, :token, :customer_id, :device_id, :ip_address, :geo, :expire_at, :created_at, :updated_at
json.url session_url(session, format: :json)
