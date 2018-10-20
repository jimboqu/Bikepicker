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

  validates_presence_of :name

  def self.weight_total(bike)
  	new_weight = bike.frame.weight + bike.wheel.weight
    bike.update(weight: new_weight)
  end

  def self.price_total(bike)
    price = bike.wheel.price.to_i
  	new_price = bike.frame.price + price
  	bike.update(price: new_price)
  end
end
