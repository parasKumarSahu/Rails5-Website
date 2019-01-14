class CreateAcademies < ActiveRecord::Migration[5.2]
  def change
    create_table :academies do |t|
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
