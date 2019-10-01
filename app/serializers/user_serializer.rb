class UserSerializer < ActiveModel::Serializer

  attributes :id, :firstname, :lastname, :username, :email, :phone, :billinginfo

  has_many :orders
  # has_many :orderjoins, through: :orders
  # has_many :items, through: :orderjoins
  has_one :shoppingcart
  # has_many :items, through: :shoppingcartjoins
end
