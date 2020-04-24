class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :code
      t.integer :section
      t.string :semester
      t.string :title
      t.text :details
      t.references :Department, foreign_key: true

      t.timestamps
    end
  end
end
