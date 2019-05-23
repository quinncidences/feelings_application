class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :course, :city
end
