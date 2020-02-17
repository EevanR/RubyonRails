FactoryBot.define do
  factory :user do
    email { "john_doe#{rand(1...9999)}@mail.com" }
    password { "password" }
  end
end
