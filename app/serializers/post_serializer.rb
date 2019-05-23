class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :content, :claps, :user
end
