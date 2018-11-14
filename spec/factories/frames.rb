# == Schema Information
#
# Table name: frames
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  manufacturer :string
#  price        :decimal(8, 2)
#  weight       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :frame do
    name "yead"
    manufacturer "meh"
    price 234
    weight 23
  end
end
