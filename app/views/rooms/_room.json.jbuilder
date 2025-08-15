json.extract! room, :id, :name, :room_type, :capacity, :resources, :created_at, :updated_at
json.url room_url(room, format: :json)
