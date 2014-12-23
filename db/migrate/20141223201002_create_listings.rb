class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :ISBN
      t.integer :price
      t.text :description
      t.string :condition

      t.timestamps
    end
  end
end
