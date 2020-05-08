require 'test_helper'

class DeptgoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    #@deptgoal = deptgoals(:one)
    @deptgoal = Deptgoal.first
  end

  test "should show deptgoal" do
    get "/departments/#{@deptgoal.department.deptCode}/deptgoals/#{@deptgoal.id}"
    assert_response :success
  end
end
