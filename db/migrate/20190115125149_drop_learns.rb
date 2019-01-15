class DropLearns < ActiveRecord::Migration[5.2]
  def change
  	drop_table :learns
  end
end
