class CreateDeptGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :dept_goals do |t|
      t.integer :goalNum
      t.string :goalText
      t.text :goalDetails
      t.references :InstGoal, foreign_key: true
      t.references :Department, foreign_key: true

      t.timestamps
    end
  end
end
