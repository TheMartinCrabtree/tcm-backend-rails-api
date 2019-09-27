class CreateShoppingcartjoins < ActiveRecord::Migration[5.2]
  def change
    create_table :shoppingcartjoins do |t|
      t.belongs_to :item, foreign_key: true
      t.belongs_to :shoppingcart, foreign_key: true
      t.integer :itemquantity

      t.timestamps
    end
  end
end
