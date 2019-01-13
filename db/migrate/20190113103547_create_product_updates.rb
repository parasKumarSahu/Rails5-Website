class CreateProductUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :product_updates do |t|
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
