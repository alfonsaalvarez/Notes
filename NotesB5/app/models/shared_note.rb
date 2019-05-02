class SharedNote < ApplicationRecord
  belongs_to :note
  belongs_to :user1
  belongs_to :user2
end
