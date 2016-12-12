require 'test_helper'

class LearnEasyControllerTest < ActionController::TestCase
  test "should get learn_easy" do
    get :learn_easy
    assert_response :success
  end

end
