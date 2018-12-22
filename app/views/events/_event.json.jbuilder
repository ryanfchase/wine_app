json.extract! event, :id, :tag, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
