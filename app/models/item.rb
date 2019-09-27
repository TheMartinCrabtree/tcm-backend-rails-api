class Item < ApplicationRecord
    has_many :orderjoin
    has_many :shoppingcartjoin
    has_many :orders, through: :orderjoin
    has_many :shoppingcarts, through: Shoppingcartjoin


end
