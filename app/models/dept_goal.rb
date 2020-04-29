class DeptGoal < ApplicationRecord
  belongs_to :InstGoal
  belongs_to :Department
  has_many :course_goals
end
