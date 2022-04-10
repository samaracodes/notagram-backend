class UserPostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :post_id

  # attribute :posts do |post|
  #   {
  #     image: post.image,
  #     caption: post.caption
  #   } 
  # end

end
