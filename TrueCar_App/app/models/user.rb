class User < ApplicationRecord
	has_secure_password
	has_many :posts
	has_many :likes
	has_many :followings

	#attr_accessible :name, :password, :password_confirmation
	validates_uniqueness_of :name
end
