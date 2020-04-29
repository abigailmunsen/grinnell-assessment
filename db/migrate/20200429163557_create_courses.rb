class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :courseCode
      t.integer :courseSection
      t.string :semester
      t.string :courseTitle
      t.text :courseDetails
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
