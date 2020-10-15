class User < ApplicationRecord
  validates :username, length: { in: 4..12 }, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { in: 6..16 }, presence: true
  has_many :posts
end
