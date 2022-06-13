require "test_helper"

class Admin::PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_public_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_public_edit_url
    assert_response :success
  end
end
