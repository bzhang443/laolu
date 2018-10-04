json.extract! device, :id, :category, :did, :os, :model, :build, :source, :user_agent, :created_at, :updated_at
json.url device_url(device, format: :json)
