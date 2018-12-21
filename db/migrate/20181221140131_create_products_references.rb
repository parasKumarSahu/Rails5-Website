class CreateProductsReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :products_references do |t|
      t.references :product, foreign_key: true
      t.references :reference, foreign_key: true
    end
  end
end
