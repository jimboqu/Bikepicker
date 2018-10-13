# == Schema Information
#
# Table name: wheels
#
#  id           :integer          not null, primary key
#  name         :string
#  manufacturer :string
#  string       :string
#  price        :string
#  decimal      :string
#  weight       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class WheelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
