class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :content, :claps, :user, :created_at
end
