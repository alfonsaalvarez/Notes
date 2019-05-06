class Note < ActiveRecord::Base
  belongs_to :user
  has_one_attached :image

	validates :title, presence: true

end
