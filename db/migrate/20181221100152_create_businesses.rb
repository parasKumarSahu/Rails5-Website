class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :body
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
