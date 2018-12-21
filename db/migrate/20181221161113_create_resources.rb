class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :link
      t.string :type
      t.string :category
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
