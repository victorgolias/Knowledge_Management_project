require 'test_helper'

class CategoryControllerTest < ActionController::TestCase
  test "should get createRoot" do
    get :createRoot
    assert_response :success
  end

end
