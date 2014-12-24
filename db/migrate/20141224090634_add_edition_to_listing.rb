class AddEditionToListing < ActiveRecord::Migration
  def change
    add_column :listings, :edition, :string
  end
end
