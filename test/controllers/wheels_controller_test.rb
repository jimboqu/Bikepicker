require 'test_helper'

class WheelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wheels_index_url
    assert_response :success
  end

end
