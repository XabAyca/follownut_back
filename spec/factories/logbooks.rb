FactoryBot.define do
  factory :logbook do
    patient_id {Patient.last.id}
    title {"Monday, June 16th"}
    content {"Today I ate a lot of carbs because I was so hungry from yesterday jogging. I kinda regret it now because I am sure i over ate and feel dizzy"}
    is_shared {true}

  end
end
