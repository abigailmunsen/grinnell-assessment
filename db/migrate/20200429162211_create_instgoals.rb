class CreateInstgoals < ActiveRecord::Migration[5.2]
  def change
    create_table :instgoals do |t|
      t.integer :goalNum
      t.text :goalText
      t.string :goalDetails

      t.timestamps
    end
  end
end
