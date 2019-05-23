class User < ApplicationRecord
  validates :username, :password, :course, :city, presence: true
  validates :username, uniqueness: true

  has_many :claps
  has_many :posts
end
