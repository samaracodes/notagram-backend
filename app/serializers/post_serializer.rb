class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :image, :caption, :users
end
