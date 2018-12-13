require 'test_helper'

class BullentinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bullentin = bullentins(:one)
  end

  test "should get index" do
    get bullentins_url
    assert_response :success
  end

  test "should get new" do
    get new_bullentin_url
    assert_response :success
  end

  test "should create bullentin" do
    assert_difference('Bullentin.count') do
      post bullentins_url, params: { bullentin: { content: @bullentin.content, date: @bullentin.date, topis: @bullentin.topis } }
    end

    assert_redirected_to bullentin_url(Bullentin.last)
  end

  test "should show bullentin" do
    get bullentin_url(@bullentin)
    assert_response :success
  end

  test "should get edit" do
    get edit_bullentin_url(@bullentin)
    assert_response :success
  end

  test "should update bullentin" do
    patch bullentin_url(@bullentin), params: { bullentin: { content: @bullentin.content, date: @bullentin.date, topis: @bullentin.topis } }
    assert_redirected_to bullentin_url(@bullentin)
  end

  test "should destroy bullentin" do
    assert_difference('Bullentin.count', -1) do
      delete bullentin_url(@bullentin)
    end

    assert_redirected_to bullentins_url
  end
end
