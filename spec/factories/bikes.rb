FactoryBot.define do
  factory :bike do
    name {"spsh"}
    description {"Look"}
    association :frame
    association :wheel
    association :user
  end
end
