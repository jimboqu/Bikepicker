# == Schema Information
#
# Table name: brakes
#
#  id           :bigint(8)        not null, primary key
#  manufacturer :string
#  name         :string
#  price        :decimal(, )      default(0.0)
#  weight       :integer          default(0)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :brake do
    manufacturer { "MyString" }
    name { "MyString" }
    price { "9.99" }
    weight { 1 }
  end
end
