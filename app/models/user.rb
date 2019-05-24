class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :username, :password, :course, :city, presence: true
  validates :username, uniqueness: true, confirmation: { case_sensitive: false }

  has_many :claps
  has_many :posts


end
