require "test_helper"

class ButtonClicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @button_click = button_clicks(:one)
  end

  test "should get index" do
    get button_clicks_url
    assert_response :success
  end

  test "should get new" do
    get new_button_click_url
    assert_response :success
  end

  test "should create button_click" do
    assert_difference("ButtonClick.count") do
      post button_clicks_url, params: { button_click: {  } }
    end

    assert_redirected_to button_click_url(ButtonClick.last)
  end

  test "should show button_click" do
    get button_click_url(@button_click)
    assert_response :success
  end

  test "should get edit" do
    get edit_button_click_url(@button_click)
    assert_response :success
  end

  test "should update button_click" do
    patch button_click_url(@button_click), params: { button_click: {  } }
    assert_redirected_to button_click_url(@button_click)
  end

  test "should destroy button_click" do
    assert_difference("ButtonClick.count", -1) do
      delete button_click_url(@button_click)
    end

    assert_redirected_to button_clicks_url
  end
end
