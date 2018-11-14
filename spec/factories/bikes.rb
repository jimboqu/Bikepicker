# == Schema Information
#
# Table name: bikes
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#  frame_id    :integer
#  wheel_id    :integer
#  weight      :integer
#  chainset_id :integer
#  brake_id    :bigint(8)
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
