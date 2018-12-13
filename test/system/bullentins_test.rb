require "application_system_test_case"

class BullentinsTest < ApplicationSystemTestCase
  setup do
    @bullentin = bullentins(:one)
  end

  test "visiting the index" do
    visit bullentins_url
    assert_selector "h1", text: "Bullentins"
  end

  test "creating a Bullentin" do
    visit bullentins_url
    click_on "New Bullentin"

    fill_in "Content", with: @bullentin.content
    fill_in "Date", with: @bullentin.date
    fill_in "Topis", with: @bullentin.topis
    click_on "Create Bullentin"

    assert_text "Bullentin was successfully created"
    click_on "Back"
  end

  test "updating a Bullentin" do
    visit bullentins_url
    click_on "Edit", match: :first

    fill_in "Content", with: @bullentin.content
    fill_in "Date", with: @bullentin.date
    fill_in "Topis", with: @bullentin.topis
    click_on "Update Bullentin"

    assert_text "Bullentin was successfully updated"
    click_on "Back"
  end

  test "destroying a Bullentin" do
    visit bullentins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bullentin was successfully destroyed"
  end
end
