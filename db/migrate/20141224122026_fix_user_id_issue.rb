class FixUserIdIssue < ActiveRecord::Migration
  def change
    remove_column :listings, :userID, :integer
    add_column :listings, :user_id, :integer
    add_index :listings, :user_id
  end
end
