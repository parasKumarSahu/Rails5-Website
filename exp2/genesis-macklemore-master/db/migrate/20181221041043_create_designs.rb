class CreateDesigns < ActiveRecord::Migration[5.2]
  def change
    create_table :designs do |t|
      t.string :selector
      t.string :guide
      t.string :area
      t.string :sectors
      t.string :finishes
      t.string :availablity

      t.timestamps
    end
  end
end
