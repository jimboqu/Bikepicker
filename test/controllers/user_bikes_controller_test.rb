require 'test_helper'

class UserBikesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_bikes_index_url
    assert_response :success
  end

end
