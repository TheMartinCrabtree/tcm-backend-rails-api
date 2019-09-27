class Shoppingcart < ApplicationRecord
  belongs_to :user
  has_many :shoppingcartjoins
  has_many :items, through: :shoppingcartjoins


  
end
