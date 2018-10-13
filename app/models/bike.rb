# == Schema Information
#
# Table name: bikes
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  frame_id    :integer
#  wheel_id    :integer
#  weight      :integer
#

# Create default value for weight
# Create attribute for price



class Bike < ApplicationRecord
  
  belongs_to :user
  belongs_to :frame, optional: true
  belongs_to :wheel, optional: true
  accepts_nested_attributes_for :frame
  accepts_nested_attributes_for :wheel

  def self.weight_total(frame, wheels)
  	new_weight = frame + wheels
    update(weight: new_weight)
  end
end
