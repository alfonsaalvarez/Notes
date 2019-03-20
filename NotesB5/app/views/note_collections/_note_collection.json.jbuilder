json.extract! note_collection, :id, :name, :user_id, :note_id, :created_at, :updated_at
json.url note_collection_url(note_collection, format: :json)
