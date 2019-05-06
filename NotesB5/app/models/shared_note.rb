class SharedNote < ApplicationRecord
  belongs_to :note

  belongs_to :o_user, :class_name =>"User"
  belongs_to :d_user, :class_name =>"User"

  has_many :users
end
