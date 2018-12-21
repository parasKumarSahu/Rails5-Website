json.extract! event, :id, :name, :caption, :other, :created_at, :updated_at
json.url event_url(event, format: :json)
