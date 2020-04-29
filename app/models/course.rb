class Course < ApplicationRecord
  belongs_to :Department
  has_many :course_goals
end
