class CreateJoinTableCoursesLearns < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :learns do |t|
       t.index [:course_id, :learn_id]
       t.index [:learn_id, :course_id]
    end
  end
end
