class AddIndexToEdition < ActiveRecord::Migration
  def change
    add_index :listings, :edition
  end
end
