require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get catogories" do
    get :catogories
    assert_response :success
  end

end
