class DropJoin < ActiveRecord::Migration[5.2]
  def change
  	drop_table :courses_learns
  end
end
