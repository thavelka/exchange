class AddContactToListing < ActiveRecord::Migration
  def change
    add_column :listings, :contact, :text
  end
end
