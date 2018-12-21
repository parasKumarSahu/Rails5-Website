class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.references :design, foreign_key: true
      t.references :technical, foreign_key: true
      t.string :business
      t.string :overview
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
