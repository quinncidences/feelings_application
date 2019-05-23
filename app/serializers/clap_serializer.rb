class ClapSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :post_id, :post, :user
end
