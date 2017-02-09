class User < ApplicationRecord
	#has_secure_password
	has_many :posts
	has_many :likes
	has_many :followings

	validates_uniqueness_of :name
end
