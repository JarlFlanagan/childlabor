require 'test_helper'

class JobsearchControllerTest < ActionController::TestCase
  test "should get location" do
    get :location
    assert_response :success
  end

  test "should get job" do
    get :job
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

end
