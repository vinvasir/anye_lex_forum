class User < ApplicationRecord
	has_many :posts
	has_many :topics
	has_secure_password

	validates :name,
		presence: true

end
