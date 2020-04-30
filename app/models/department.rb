class Department < ApplicationRecord
  def to_param
    deptCode
  end
end
