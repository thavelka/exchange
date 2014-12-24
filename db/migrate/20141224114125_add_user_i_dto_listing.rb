class AddUserIDtoListing < ActiveRecord::Migration
  def change
    add_column :listings, :userID, :integer
    add_index :listings, :userID
    add_index :listings, :title
    add_index :listings, :ISBN
  end
end
