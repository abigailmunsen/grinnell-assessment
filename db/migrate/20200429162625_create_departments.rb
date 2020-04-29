class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :deptSubject
      t.string :deptFullName
      t.string :deptCode

      t.timestamps
    end
  end
end
