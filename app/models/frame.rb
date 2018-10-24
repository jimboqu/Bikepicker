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

class Frame < ApplicationRecord
  has_many :bikes
  ratyrate_rateable "weight", "stiffness", "value"
end
