FactoryBot.define do
  factory :article do
    title { "MyString" }
    content { "MyString" }
    association :author_id, factory: :user
  end
end
