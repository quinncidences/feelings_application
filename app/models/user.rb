class User < ApplicationRecord
  has_secure_password

  validates :username, :password, :course, :city, presence: true
  validates :username, uniqueness: true, confirmation: { case_sensitive: false }

  has_many :claps
  has_many :posts


end
