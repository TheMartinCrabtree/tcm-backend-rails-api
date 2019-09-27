class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_one :shoppingcart
  has_many :items, through: :shoppingcartjoins


  
end
