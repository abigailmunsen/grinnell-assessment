class CreateCourseGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :course_goals do |t|
      t.integer :goalNum
      t.string :goalText
      t.string :goalDetails
      t.string :text
      t.references :DeptGoal, foreign_key: true
      t.references :Course, foreign_key: true

      t.timestamps
    end
  end
end
