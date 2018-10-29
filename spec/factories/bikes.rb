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

FactoryBot.define do
  factory :bike do
    name {"spsh"}
    description {"Look"}
    association :frame
    association :wheel
    association :user
    association :chainset
  end
end
