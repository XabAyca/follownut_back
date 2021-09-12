FactoryBot.define do
  factory :logbook do
    id { 1 }
    title { "MyString" }
    content { "MyText" }
    is_shared { false }
    patient_id { 1 }
    created_at { "2021-09-12 20:12:35" }
    updated_at { "2021-09-12 20:12:35" }
  end
end
