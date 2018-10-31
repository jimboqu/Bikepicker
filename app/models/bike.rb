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
#  chainset_id :integer
#

# Create default 0 for weight
# Create attribute for price



class Bike < ApplicationRecord
  
  belongs_to :user
  belongs_to :frame, optional: true
  belongs_to :wheel, optional: true
  belongs_to :chainset, optional: true

  accepts_nested_attributes_for :frame
  accepts_nested_attributes_for :wheel
  accepts_nested_attributes_for :chainset

  validates_presence_of :name
  validates_presence_of :wheel
  validates_presence_of :chainset
  validates_presence_of :frame

  ratyrate_rateable "overall"

  def self.update_total(bike)
  	new_weight = bike.frame.weight + bike.wheel.weight + bike.chainset.weight
    bike.update(weight: new_weight)
  end

end
