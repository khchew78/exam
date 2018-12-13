require "application_system_test_case"

class KindergartensTest < ApplicationSystemTestCase
  setup do
    @kindergarten = kindergartens(:one)
  end

  test "visiting the index" do
    visit kindergartens_url
    assert_selector "h1", text: "Kindergartens"
  end

  test "creating a Kindergarten" do
    visit kindergartens_url
    click_on "New Kindergarten"

    fill_in "Branch", with: @kindergarten.branch
    fill_in "Branch", with: @kindergarten.branch_id
    fill_in "Name", with: @kindergarten.name
    click_on "Create Kindergarten"

    assert_text "Kindergarten was successfully created"
    click_on "Back"
  end

  test "updating a Kindergarten" do
    visit kindergartens_url
    click_on "Edit", match: :first

    fill_in "Branch", with: @kindergarten.branch
    fill_in "Branch", with: @kindergarten.branch_id
    fill_in "Name", with: @kindergarten.name
    click_on "Update Kindergarten"

    assert_text "Kindergarten was successfully updated"
    click_on "Back"
  end

  test "destroying a Kindergarten" do
    visit kindergartens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kindergarten was successfully destroyed"
  end
end
