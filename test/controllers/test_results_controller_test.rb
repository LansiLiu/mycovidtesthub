require 'test_helper'

class TestResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get test_results_new_url
    assert_response :success
  end

  test "should get create" do
    get test_results_create_url
    assert_response :success
  end

  test "should get show" do
    get test_results_show_url
    assert_response :success
  end

end
