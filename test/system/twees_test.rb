require "application_system_test_case"

class TweesTest < ApplicationSystemTestCase
  setup do
    @twee = twees(:one)
  end

  test "visiting the index" do
    visit twees_url
    assert_selector "h1", text: "Twees"
  end

  test "creating a Twee" do
    visit twees_url
    click_on "New Twee"

    fill_in "Content", with: @twee.content
    fill_in "Created on", with: @twee.created_on
    click_on "Create Twee"

    assert_text "Twee was successfully created"
    click_on "Back"
  end

  test "updating a Twee" do
    visit twees_url
    click_on "Edit", match: :first

    fill_in "Content", with: @twee.content
    fill_in "Created on", with: @twee.created_on
    click_on "Update Twee"

    assert_text "Twee was successfully updated"
    click_on "Back"
  end

  test "destroying a Twee" do
    visit twees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twee was successfully destroyed"
  end
end
