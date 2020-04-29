require "application_system_test_case"

class InstgoalsTest < ApplicationSystemTestCase
  setup do
    @instgoal = instgoals(:one)
  end

  test "visiting the index" do
    visit instgoals_url
    assert_selector "h1", text: "Instgoals"
  end

  test "creating a Instgoal" do
    visit instgoals_url
    click_on "New Instgoal"

    fill_in "Goaldetails", with: @instgoal.goalDetails
    fill_in "Goalnum", with: @instgoal.goalNum
    fill_in "Goaltext", with: @instgoal.goalText
    fill_in "Text", with: @instgoal.text
    click_on "Create Instgoal"

    assert_text "Instgoal was successfully created"
    click_on "Back"
  end

  test "updating a Instgoal" do
    visit instgoals_url
    click_on "Edit", match: :first

    fill_in "Goaldetails", with: @instgoal.goalDetails
    fill_in "Goalnum", with: @instgoal.goalNum
    fill_in "Goaltext", with: @instgoal.goalText
    fill_in "Text", with: @instgoal.text
    click_on "Update Instgoal"

    assert_text "Instgoal was successfully updated"
    click_on "Back"
  end

  test "destroying a Instgoal" do
    visit instgoals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instgoal was successfully destroyed"
  end
end
