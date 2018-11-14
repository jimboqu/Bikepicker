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

FactoryBot.define do
  factory :wheel do
    name "wheel"
    manufacturer "speah"
    price "235"
    weight 23
  end
end
