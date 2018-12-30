class CreatePerformences < ActiveRecord::Migration[5.2]
  def change
    create_table :performences do |t|
      t.string :features
      t.string :maintenance
      t.string :warranty
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
