require 'test_helper'

class SalesControllerTest < ActionController::TestCase
  test "should get house" do
    get :house
    assert_response :success
  end

  test "should get apartment" do
    get :apartment
    assert_response :success
  end

  test "should get terrain" do
    get :terrain
    assert_response :success
  end

end
