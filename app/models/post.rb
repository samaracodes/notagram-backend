class Post < ApplicationRecord
    has_many :user_posts
    has_many :users, through: :user_posts
    validates :image, presence: true
    
end
