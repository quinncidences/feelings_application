class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :course, :city, :posts, :claps
end
