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

FactoryBot.define do
  factory :chainset do
    name { "MyString" }
    manufacturer { "MyString" }
    weight { 1 }
    price { "9.99" }
  end
end
