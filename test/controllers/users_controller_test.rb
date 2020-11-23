require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get my_page" do
    get users_my_page_url
    assert_response :success
  end

  test "should get mode_change" do
    get users_mode_change_url
    assert_response :success
  end

end
