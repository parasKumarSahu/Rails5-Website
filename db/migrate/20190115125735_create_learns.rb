class CreateLearns < ActiveRecord::Migration[5.2]
  def change
    create_table :learns do |t|
      t.references :course, foreign_key: true
      t.string :link
      t.string :thumbnail
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
