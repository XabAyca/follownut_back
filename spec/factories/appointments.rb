
FactoryBot.define do
  factory :appointment do
    patient_id {Patient.last.id}
    nutritionist_id {Nutritionist.last.id}
    date {"12/12/2021"}
    content {"blablabla"}
    height {1.8}
    weight {75}
    body_fat {70}
    visceral_fat {70}
    muscle_mass {30}
  end
end