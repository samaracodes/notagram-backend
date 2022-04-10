class User < ApplicationRecord
    has_secure_password
    has_many :user_posts
    has_many :posts, through: :user_posts
    validates :username, :password_digest, presence: true
end
