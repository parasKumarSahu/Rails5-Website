class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :description
      t.string :image
      t.string :image_type
      t.integer :image_size

      t.timestamps
    end
  end
end
