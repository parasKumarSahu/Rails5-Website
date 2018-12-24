class CreateReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :references do |t|
      t.string :image
      t.string :customer
      t.string :type
      t.string :project
      t.string :product
      t.string :code
      t.string :location
      t.string :quantity
      t.integer :year

      t.timestamps
    end
  end
end
