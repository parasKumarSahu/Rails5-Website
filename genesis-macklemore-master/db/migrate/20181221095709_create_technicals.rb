class CreateTechnicals < ActiveRecord::Migration[5.2]
  def change
    create_table :technicals do |t|
      t.string :composition
      t.string :manufacturing
      t.string :install
      t.string :perform
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
