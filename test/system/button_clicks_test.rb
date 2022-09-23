require "application_system_test_case"

class ButtonClicksTest < ApplicationSystemTestCase
  setup do
    @button_click = button_clicks(:one)
  end

  test "visiting the index" do
    visit button_clicks_url
    assert_selector "h1", text: "Button clicks"
  end

  test "should create button click" do
    visit button_clicks_url
    click_on "New button click"

    click_on "Create Button click"

    assert_text "Button click was successfully created"
    click_on "Back"
  end

  test "should update Button click" do
    visit button_click_url(@button_click)
    click_on "Edit this button click", match: :first

    click_on "Update Button click"

    assert_text "Button click was successfully updated"
    click_on "Back"
  end

  test "should destroy Button click" do
    visit button_click_url(@button_click)
    click_on "Destroy this button click", match: :first

    assert_text "Button click was successfully destroyed"
  end
end
