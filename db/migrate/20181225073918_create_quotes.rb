class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.integer :day_number
      t.string :content
      t.string :speaker

      t.timestamps
    end
  end
end
