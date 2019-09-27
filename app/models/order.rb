class Order < ApplicationRecord
  belongs_to :user
  has_many :orderjoins
  has_many :items, through: :orderjoins


end
