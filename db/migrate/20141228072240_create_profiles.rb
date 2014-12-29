class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :contact

      t.timestamps
    end
  end
end
