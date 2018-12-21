class CreateLearns < ActiveRecord::Migration[5.2]
  def change
    create_table :learns do |t|
      t.string :video_link
      t.string :thumbnail
      t.string :thumbnail_type
      t.integer :thumbnail_size

      t.timestamps
    end
  end
end
