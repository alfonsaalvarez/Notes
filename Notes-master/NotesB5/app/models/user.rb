class User < ActiveRecord::Base
	has_many :notes
	has_many :collections
	
	validates :name, presence: true, uniqueness: true
	validates :password, presence: true
end
