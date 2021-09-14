require 'rails_helper'

RSpec.describe Patient, type: :model do

  before (:all)do
    @patient1 = FactoryBot.build(:patient)
  end

  it "is valid with valid attributes" do

    expect(@patient1).to be_valid
  end

  it "is  valid without first_name" do
    patient = FactoryBot.build(:patient, first_name: nil)
    expect(patient).to be_valid
  end

  it "is  valid without last_name" do
    patient = FactoryBot.build(:patient, last_name: nil)
    expect(patient).to be_valid
  end

  it "is not valid without email" do
    patient = FactoryBot.build(:patient, email: nil)
    expect(patient).to_not be_valid
  end

  it "is not valid without password" do
    patient = FactoryBot.build(:patient, password: nil)
    expect(patient).to_not be_valid
  end

  it "is not valid with different password" do
    patient = FactoryBot.build(:patient, password: "123456", password_confirmation:"1234567")
    expect(patient).to_not be_valid
  end

  it "is not valid with an existing email" do
    patient1 = FactoryBot.create(:patient)
    patient = FactoryBot.build(:patient)
    expect(patient).to_not be_valid
  end
  
end
