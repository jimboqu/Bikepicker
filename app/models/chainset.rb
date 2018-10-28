# == Schema Information
#
# Table name: chainsets
#
#  id           :integer          not null, primary key
#  name         :string
#  manufacturer :string
#  weight       :integer          default(0)
#  price        :decimal(5, 2)    default(0.0)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Chainset < ApplicationRecord
  has_many :bikes
end
