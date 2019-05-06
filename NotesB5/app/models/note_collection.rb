class NoteCollection < ActiveRecord::Base
  belongs_to :user
  has_many :notes
	validates :name, presence: true
end
