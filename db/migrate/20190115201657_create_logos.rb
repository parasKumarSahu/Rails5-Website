class CreateLogos < ActiveRecord::Migration[5.2]
  def change
    create_table :logos do |t|
      t.string :link

      t.timestamps
    end
  end
end
