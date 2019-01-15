class CreateBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :banners do |t|
      t.string :events
      t.string :downloads
      t.string :projects

      t.timestamps
    end
  end
end
