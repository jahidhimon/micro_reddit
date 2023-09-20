class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  
  validates :username, length: {minimum: 4, maximu: 12}
  validates :password, length: {minimum: 6, maximum: 16}

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
