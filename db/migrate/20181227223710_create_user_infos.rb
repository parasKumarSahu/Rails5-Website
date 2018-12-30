class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_infos do |t|
      t.string :name
      t.string :image
      t.references :user, foreign_key: true
      t.string :designation
      t.string :permanent_office
      t.string :current_office
      t.string :extension
      t.string :mob_number
      t.string :alt_number
      t.date :birthday

      t.timestamps
    end
  end
end
