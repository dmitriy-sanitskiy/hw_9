class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy
  validates :name, length: { minimum: 2, maximum: 30 }
  validates :email, uniqueness: true
end
