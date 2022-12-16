class User < ApplicationRecord
  has_many :twitter_accounts

  has_secure_password
  
  validates :email, uniqueness: true, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Must be a valid email" }
end
