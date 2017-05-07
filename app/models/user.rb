class User < ApplicationRecord
  validates :auth_token, uniqueness: true
  has_many :shops
  has_many :products, through: :shops
end
