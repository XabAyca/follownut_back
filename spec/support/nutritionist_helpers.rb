require 'faker'
require 'factory_bot_rails'

module NutritionistHelpers

  def create_nutritionist
    FactoryBot.create(:nutritionist,
      first_name:Faker::Name.first_name,
      last_name:Faker::Name.last_name,
      phone_number:Faker::PhoneNumber.phone_number,
      slug_calendly: "https://calendly.com/#{Faker::Name.first_name}",
      email: Faker::Internet.email, 
      password: "password",
      password_confirmation: "password"
    )
  end

  def build_nutritionist
    FactoryBot.build(:nutritionist,
      first_name:Faker::Name.first_name,
      last_name:Faker::Name.last_name,
      phone_number:Faker::PhoneNumber.phone_number,
      slug_calendly: "https://calendly.com/#{Faker::Name.first_name}",
      email: Faker::Internet.email, 
      password: "password",
      password_confirmation: "password"
    )
  end

end