class CreateDecorsReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :decors_references do |t|
      t.references :decor, foreign_key: true
      t.references :reference, foreign_key: true
    end
  end
end
