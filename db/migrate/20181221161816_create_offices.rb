class CreateOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :alternate_phone
      t.string :office_type
      t.string :email
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
