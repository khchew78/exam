require "application_system_test_case"

class ParentInfomationsTest < ApplicationSystemTestCase
  setup do
    @parent_infomation = parent_infomations(:one)
  end

  test "visiting the index" do
    visit parent_infomations_url
    assert_selector "h1", text: "Parent Infomations"
  end

  test "creating a Parent infomation" do
    visit parent_infomations_url
    click_on "New Parent Infomation"

    fill_in "Age", with: @parent_infomation.age
    fill_in "Ic number", with: @parent_infomation.ic_number
    fill_in "Name", with: @parent_infomation.name
    fill_in "Occupation", with: @parent_infomation.occupation
    fill_in "Parent", with: @parent_infomation.parent_id
    fill_in "Type", with: @parent_infomation.type_id
    click_on "Create Parent infomation"

    assert_text "Parent infomation was successfully created"
    click_on "Back"
  end

  test "updating a Parent infomation" do
    visit parent_infomations_url
    click_on "Edit", match: :first

    fill_in "Age", with: @parent_infomation.age
    fill_in "Ic number", with: @parent_infomation.ic_number
    fill_in "Name", with: @parent_infomation.name
    fill_in "Occupation", with: @parent_infomation.occupation
    fill_in "Parent", with: @parent_infomation.parent_id
    fill_in "Type", with: @parent_infomation.type_id
    click_on "Update Parent infomation"

    assert_text "Parent infomation was successfully updated"
    click_on "Back"
  end

  test "destroying a Parent infomation" do
    visit parent_infomations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parent infomation was successfully destroyed"
  end
end
