json.extract! shared_note, :id, :note_id, :o_user_id, :d_user_id, :created_at, :updated_at
json.url shared_note_url(shared_note, format: :json)
