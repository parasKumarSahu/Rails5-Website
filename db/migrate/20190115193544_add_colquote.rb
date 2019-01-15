class AddColquote < ActiveRecord::Migration[5.2]
  def change
  	add_column :quotes, :background, :string
  end
end
