class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :course, :city, :password_digest, :posts, :claps
end
