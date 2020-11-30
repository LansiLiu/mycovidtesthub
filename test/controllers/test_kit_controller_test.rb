require 'test_helper'

class TestKitControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get test_kit_create_url
    assert_response :success
  end

end
