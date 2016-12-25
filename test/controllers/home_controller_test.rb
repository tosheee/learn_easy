require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get intex" do
    get :intex
    assert_response :success
  end

end
