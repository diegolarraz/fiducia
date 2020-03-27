require 'test_helper'

class EnquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get enquiries_new_url
    assert_response :success
  end

  test "should get create" do
    get enquiries_create_url
    assert_response :success
  end

  test "should get edit" do
    get enquiries_edit_url
    assert_response :success
  end

  test "should get update" do
    get enquiries_update_url
    assert_response :success
  end

  test "should get destroy" do
    get enquiries_destroy_url
    assert_response :success
  end

end
