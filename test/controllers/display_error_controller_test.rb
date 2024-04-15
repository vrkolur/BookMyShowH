require "test_helper"

class DisplayErrorControllerTest < ActionDispatch::IntegrationTest
  test "should get forbidden" do
    get display_error_forbidden_url
    assert_response :success
  end
end
