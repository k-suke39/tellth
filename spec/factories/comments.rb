FactoryBot.define do
  factory :comment do
    post_id { 1 }
    user_id { 1 }
    content { "MyString" }
  end
end
