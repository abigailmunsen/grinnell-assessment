class InstGoal < ApplicationRecord
  has_many :dept_goals

  def to_param
    goalNum
  end
end
