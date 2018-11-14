# == Schema Information
#
# Table name: wheels
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  manufacturer :string
#  string       :string
#  price        :string
#  decimal      :string
#  weight       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Wheel < ApplicationRecord
  has_many :bikes
end
