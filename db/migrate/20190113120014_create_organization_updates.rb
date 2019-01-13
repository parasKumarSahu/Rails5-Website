class CreateOrganizationUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_updates do |t|
      t.string :image
      t.string :video
      t.string :description

      t.timestamps
    end
  end
end
