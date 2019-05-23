class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :course, :city, :posts, :claps
end
