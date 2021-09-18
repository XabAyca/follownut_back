FactoryBot.define do
  factory :article do
    title {"5% tips to lose weight"}
    content {"1- Dont eat shit. 2-Dont drink sugar. 3-Sleep well and be rested. 4- Work out regularly. 5-Relax"}
    nutritionist_id {Nutritionist.last.id}
  end
end
