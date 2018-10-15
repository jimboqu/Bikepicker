# == Schema Information
#
# Table name: frames
#
#  id           :integer          not null, primary key
#  name         :string
#  manufacturer :string
#  price        :decimal(8, 2)
#  weight       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class FramesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get frames_index_url
    assert_response :success
  end

end
