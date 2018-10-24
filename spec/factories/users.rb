FactoryBot.define do
  factory :user do
    name "james quilter"
    sequence(:email) {|i| "jimbo#{i}@gmail.com"}
    password "moorohurst"
  end
end
