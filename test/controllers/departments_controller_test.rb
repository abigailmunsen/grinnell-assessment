require 'test_helper'

class DepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    #@department = departments(:one)
    @department = Department.first
  end

  test "should get index" do
    get departments_url
    assert_response :success
  end

  test "should show department" do
    get department_url(@department)
    assert_response :success
  end

  #these tests are commented out because we have not created this functionality.
  #if you add this functionality, uncomment.

  #test "should get new" do
    #get new_department_url
    #assert_response :success
  #end
#
  #test "should create department" do
    #assert_difference('Department.count') do
      #post departments_url, params: { department: { deptCode: @department.deptCode, deptFullName: @department.deptFullName, deptSubject: @department.deptSubject } }
    #end
#
    #assert_redirected_to department_url(Department.last)
  #end
#
#
    #test "should get edit" do
      #get edit_department_url(@department)
      #assert_response :success
    #end
#
    #test "should update department" do
      #patch department_url(@department), params: { department: { deptCode: @department.deptCode, deptFullName: @department.deptFullName, deptSubject: @department.deptSubject } }
      #assert_redirected_to department_url(@department)
    #end
#
    #test "should destroy department" do
      #assert_difference('Department.count', -1) do
        #delete department_url(@department)
      #end
#
      #assert_redirected_to departments_url
end
