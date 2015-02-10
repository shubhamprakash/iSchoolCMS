require 'test_helper'

class InformationsControllerTest < ActionController::TestCase
  test "should get request" do
    get :request
    assert_response :success
  end

  test "should get contactus" do
    get :contactus
    assert_response :success
  end

end
