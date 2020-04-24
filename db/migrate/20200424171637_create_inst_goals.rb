class CreateInstGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :inst_goals do |t|
      t.integer :goalNum
      t.string :goalText
      t.text :goalDetails

      t.timestamps
    end
  end
end
