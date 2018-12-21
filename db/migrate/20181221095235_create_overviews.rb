class CreateOverviews < ActiveRecord::Migration[5.2]
  def change
    create_table :overviews do |t|
      t.string :body
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
