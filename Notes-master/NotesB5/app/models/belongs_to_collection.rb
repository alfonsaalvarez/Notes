class BelongsToCollection < ApplicationRecord
  has_one :note
  has_one :note_collection, :class_name=>"NoteCollection"
end
