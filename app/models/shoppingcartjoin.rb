class Shoppingcartjoin < ApplicationRecord
  belongs_to :item
  belongs_to :shoppingcart
  # belongs_to :user, through: :shoppingcart

  
end
