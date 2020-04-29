class CreateCoursegoals < ActiveRecord::Migration[5.2]
  def change
    create_table :coursegoals do |t|
      t.integer :goalNum
      t.text :goalText
      t.text :goalDetails
      t.references :deptgoal, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
