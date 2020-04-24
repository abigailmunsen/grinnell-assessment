class CourseGoal < ApplicationRecord
  belongs_to :DeptGoal
  belongs_to :Course
end
