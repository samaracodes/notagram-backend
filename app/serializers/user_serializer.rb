class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :profile_picture, :bio

  attribute :posts
  
end
