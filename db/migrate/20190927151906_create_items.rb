class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :itemname
      t.string :category
      t.string :description
      t.decimal :price
      t.integer :currentstock
      t.integer :imageid

      t.timestamps
    end
  end
end
