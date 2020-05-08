require 'test_helper'

class InstgoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    #@instgoal = instgoals(:one)
    @instgoal = Instgoal.first
  end

  test "should get index" do
    get instgoals_url
    assert_response :success
  end

  test "should show instgoal" do
    get instgoal_url(@instgoal)
    assert_response :success
  end

  #these tests are commented out because we have not created this functionality.
  #if you add this functionality, uncomment.


  #test "should get new" do
    #get new_instgoal_url
    #assert_response :success
  #end
#
  #test "should create instgoal" do
    #assert_difference('Instgoal.count') do
      #post instgoals_url, params: { instgoal: { goalDetails: @instgoal.goalDetails, goalNum: @instgoal.goalNum, goalText: @instgoal.goalText, text: @instgoal.text } }
    #end
#
    #assert_redirected_to instgoal_url(Instgoal.last)
  #end
#
  #test "should get edit" do
    #get edit_instgoal_url(@instgoal)
    #assert_response :success
  #end
#
  #test "should update instgoal" do
    #patch instgoal_url(@instgoal), params: { instgoal: { goalDetails: @instgoal.goalDetails, goalNum: @instgoal.goalNum, goalText: @instgoal.goalText, text: @instgoal.text } }
    #assert_redirected_to instgoal_url(@instgoal)
  #end
#
  #test "should destroy instgoal" do
    #assert_difference('Instgoal.count', -1) do
      #delete instgoal_url(@instgoal)
    #end
#
    #assert_redirected_to instgoals_url
  #end
end
