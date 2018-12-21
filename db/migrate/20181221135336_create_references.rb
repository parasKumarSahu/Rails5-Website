class CreateReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :references do |t|
      t.string :tag
      t.string :project
      t.string :country_city
      t.string :address
      t.string :address_link
      t.string :installer
      t.string :installer_link
      t.string :owner
      t.string :owner_link

      t.timestamps
    end
  end
end
