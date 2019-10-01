class ShoppingcartSerializer < ActiveModel::Serializer
  attributes :id

  has_many :shoppingcartjoins, embed: :item
  has_many :items
  
end
