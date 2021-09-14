FactoryBot.define do
  factory :patient do
    first_name {"marie"}
    last_name {"nina"}
    email {"marie@nina.fr"}
    password{ "azerty123"}
    password_confirmation {"azerty123"}
  end
end
