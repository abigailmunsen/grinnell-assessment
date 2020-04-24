class DeptGoal < ApplicationRecord
  belongs_to :InstGoal
  belongs_to :Department
end
