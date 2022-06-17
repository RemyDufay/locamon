require "test_helper"

class CatchesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get catches_show_url
    assert_response :success
  end
end
