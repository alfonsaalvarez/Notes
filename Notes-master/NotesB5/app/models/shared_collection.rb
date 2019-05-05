class SharedCollection < ApplicationRecord
  belongs_to :note_collection
  belongs_to :o_user, :class_name => "User"
  belongs_to :d_user, :class_name => "User"

  has_many :users
end
