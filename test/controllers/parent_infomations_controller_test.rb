require 'test_helper'

class ParentInfomationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent_infomation = parent_infomations(:one)
  end

  test "should get index" do
    get parent_infomations_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_infomation_url
    assert_response :success
  end

  test "should create parent_infomation" do
    assert_difference('ParentInfomation.count') do
      post parent_infomations_url, params: { parent_infomation: { age: @parent_infomation.age, ic_number: @parent_infomation.ic_number, name: @parent_infomation.name, occupation: @parent_infomation.occupation, parent_id: @parent_infomation.parent_id, type_id: @parent_infomation.type_id } }
    end

    assert_redirected_to parent_infomation_url(ParentInfomation.last)
  end

  test "should show parent_infomation" do
    get parent_infomation_url(@parent_infomation)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_infomation_url(@parent_infomation)
    assert_response :success
  end

  test "should update parent_infomation" do
    patch parent_infomation_url(@parent_infomation), params: { parent_infomation: { age: @parent_infomation.age, ic_number: @parent_infomation.ic_number, name: @parent_infomation.name, occupation: @parent_infomation.occupation, parent_id: @parent_infomation.parent_id, type_id: @parent_infomation.type_id } }
    assert_redirected_to parent_infomation_url(@parent_infomation)
  end

  test "should destroy parent_infomation" do
    assert_difference('ParentInfomation.count', -1) do
      delete parent_infomation_url(@parent_infomation)
    end

    assert_redirected_to parent_infomations_url
  end
end
