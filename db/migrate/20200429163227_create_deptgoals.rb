class CreateDeptgoals < ActiveRecord::Migration[5.2]
  def change
    create_table :deptgoals do |t|
      t.integer :goalNum
      t.text :goalText
      t.text :goalDetails
      t.references :instgoal, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
