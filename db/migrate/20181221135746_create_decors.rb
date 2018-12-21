class CreateDecors < ActiveRecord::Migration[5.2]
  def change
    create_table :decors do |t|
      t.string :name
      t.integer :number
      t.string :type
      t.string :image_path
      t.string :image_type
      t.integer :image_size

      t.timestamps
    end
  end
end
