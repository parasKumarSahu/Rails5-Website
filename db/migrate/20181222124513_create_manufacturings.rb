class CreateManufacturings < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturings do |t|
      t.string :inputs
      t.string :process
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
