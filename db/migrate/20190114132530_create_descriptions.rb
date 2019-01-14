class CreateDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :descriptions do |t|
      t.string :home
      t.string :products
      t.string :academy
      t.string :downloads
      t.string :projects
      t.string :events

      t.timestamps
    end
  end
end
