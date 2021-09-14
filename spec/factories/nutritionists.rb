FactoryBot.define do
  factory :nutritionist do
    first_name {"john"}
    last_name {"doe"}
    phone_number {"0679694578"}
    api_key {"LHCEDBKOUYNDAX5PV5SFGY3OB3TUPGCF"}
    slug_calendly {"https://calendly.com/john"}
    avatar {'https://i.pravatar.cc/300'}
    email {"john@doe.fr"}
    password{ "azerty123"}
    password_confirmation {"azerty123"}
    
  end
end
