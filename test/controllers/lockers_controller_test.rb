require 'test_helper'

class LockersControllerTest < ActionController::TestCase
  test "should get store_bag" do
    get :store_bag
    assert_response :success
  end

  test "should get retrieve_bag" do
    get :retrieve_bag
    assert_response :success
  end

end
