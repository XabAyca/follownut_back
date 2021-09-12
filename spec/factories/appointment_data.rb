FactoryBot.define do
  factory :appointment_datum do
    date { "2021-09-12 19:55:11" }
    weight { 1.5 }
    height { 1.5 }
    body_fat { 1.5 }
    muscle_mass { 1.5 }
    visceral_fat { 1.5 }
    BMI { 1.5 }
    patient_id { 1 }
    nutritionist_id { 1 }
    created_at { "" }
    updated_at { "" }
  end
end
