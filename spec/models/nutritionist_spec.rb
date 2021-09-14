require 'rails_helper'
require 'factory_bot_rails'

RSpec.describe Nutritionist, type: :model do

  before do
    @nutritionist1 = FactoryBot.build(:nutritionist)
  end

  it "is valid with valid attributes" do

    expect(@nutritionist1).to be_valid
  end

  it "is not valid without first_name" do
    nutritionist2 = FactoryBot.build(:nutritionist, first_name: nil)
    expect(nutritionist2).to_not be_valid
  end

  it "is not valid without last_name" do
    nutritionist2 = FactoryBot.build(:nutritionist, last_name: nil)
    expect(nutritionist2).to_not be_valid
  end

  it "is not valid without phone_number" do
    nutritionist2 = FactoryBot.build(:nutritionist, phone_number: nil)
    expect(nutritionist2).to_not be_valid
  end

  it "is not valid without api_key" do
    nutritionist2 = FactoryBot.build(:nutritionist, api_key: nil)
    expect(nutritionist2).to_not be_valid
  end

  it "is not valid without slug_calendly" do
    nutritionist2 = FactoryBot.build(:nutritionist, slug_calendly: nil)
    expect(nutritionist2).to_not be_valid
  end

  it "is not valid without email" do
    nutritionist2 = FactoryBot.build(:nutritionist, email: nil)
    expect(nutritionist2).to_not be_valid
  end

  it "is not valid with different password" do
    nutritionist2 = FactoryBot.build(:nutritionist, password: "123456", password_confirmation:"1234567")
    expect(nutritionist2).to_not be_valid
  end

  it "is not valid without password" do
    nutritionist2 = FactoryBot.build(:nutritionist, password: nil)
    expect(nutritionist2).to_not be_valid
  end

  it "is not valid with existing email" do
    nutritionist = FactoryBot.create(:nutritionist)
    nutritionist2 = FactoryBot.build(:nutritionist, api_key: 'abcde',slug_calendly: "https://calendly.com/dina")
    expect(nutritionist2).to be_invalid
  end

  it "is not valid with existing api key" do
    nutritionist = FactoryBot.create(:nutritionist )
    nutritionist2 = FactoryBot.build(:nutritionist,email: 'abcde@ab.fr',slug_calendly: "https://calendly.com/dina")
    expect(nutritionist2).to_not be_valid
  end

  it "is not valid with existing slug calendly" do
    nutritionist = FactoryBot.create(:nutritionist )
    nutritionist2 = FactoryBot.build(:nutritionist, email: 'abcde@ab.fr',api_key: 'abcde')
    expect(nutritionist2).to_not be_valid
  end
end
