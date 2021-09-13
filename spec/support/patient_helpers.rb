require 'faker'
require 'factory_bot_rails'

module PatientHelpers

  def create_patient
    FactoryBot.create(:patient, 
            email: Faker::Internet.email, 
            password: "password",
            password_confirmation: "password"
        )
  end

    def build_patient
    FactoryBot.build(:patient, 
            email: Faker::Internet.email, 
            password: "password",
            password_confirmation: "password"
        )
  end

end