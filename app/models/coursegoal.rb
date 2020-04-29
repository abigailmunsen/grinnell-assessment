class Coursegoal < ApplicationRecord
  belongs_to :deptgoal
  belongs_to :course
end
