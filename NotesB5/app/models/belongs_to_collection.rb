class BelongsToCollection < ApplicationRecord
  has_one :note
  has_one :note_collection
end
