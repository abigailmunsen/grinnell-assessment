require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    #@course = courses(:one)
    @course = Course.first
  end

  test "should show course" do
    get "/departments/#{@course.department.deptCode}/courses/#{@course.id}"
    assert_response :success
  end
end
