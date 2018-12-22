class CreateInstallations < ActiveRecord::Migration[5.2]
  def change
    create_table :installations do |t|
      t.string :safety
      t.string :fabrication
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
