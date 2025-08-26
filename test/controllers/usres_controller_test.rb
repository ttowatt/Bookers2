require "test_helper"

class UsresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usres_index_url
    assert_response :success
  end

  test "should get show" do
    get usres_show_url
    assert_response :success
  end

  test "should get edit" do
    get usres_edit_url
    assert_response :success
  end

  test "should get update" do
    get usres_update_url
    assert_response :success
  end
end
