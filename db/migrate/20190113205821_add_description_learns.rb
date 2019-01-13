class AddDescriptionLearns < ActiveRecord::Migration[5.2]
  def change
  	add_column :learns, :title, :string
  	add_column :learns, :description, :string
  end
end
