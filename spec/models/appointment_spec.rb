require 'rails_helper'

RSpec.describe Appointment, type: :model do

  before (:all)do
    FactoryBot.create(:patient)
    FactoryBot.create(:nutritionist)
    @appointment1 = FactoryBot.build(:appointment)
  end

  after (:all) do
    Nutritionist.destroy_all
    Appointment.destroy_all
    Patient.destroy_all
  end

  it "is valid with valid attributes" do
    expect(@appointment1).to be_valid
  end

  it "is not valid without content" do
    appointment = FactoryBot.build(:appointment, content: nil)
    expect(appointment).to_not be_valid
  end

  it "is not valid without height" do
    appointment = FactoryBot.build(:appointment, height: nil)
    expect(appointment).to_not be_valid
  end

  it "is not valid without weight" do
    appointment = FactoryBot.build(:appointment, weight: nil)
    expect(appointment).to_not be_valid
  end

  it "is not valid without body_fat" do
    appointment = FactoryBot.build(:appointment, body_fat: nil)
    expect(appointment).to_not be_valid
  end

  it "is not valid without muscle_mass" do
    appointment = FactoryBot.build(:appointment, muscle_mass: nil)
    expect(appointment).to_not be_valid
  end

  it "is not valid without visceral_fat" do
    appointment = FactoryBot.build(:appointment, visceral_fat: nil)
    expect(appointment).to_not be_valid
  end

  it "is not valid without date" do
    appointment = FactoryBot.build(:appointment, date: nil)
    expect(appointment).to_not be_valid
  end

  it "is not valid without nutritionist_id" do
    appointment = FactoryBot.build(:appointment, nutritionist_id: nil)
    expect(appointment).to_not be_valid
  end
  
  it "is not valid without patient_id" do
    appointment = FactoryBot.build(:appointment, patient_id: nil)
    expect(appointment).to_not be_valid
  end

  it "is not valid with inexting  patient_id" do
    appointment = FactoryBot.build(:appointment, patient_id: 999)
    expect(appointment).to_not be_valid
  end

  it "is not valid with inexting  nutritionist_id" do
    appointment = FactoryBot.build(:appointment, nutritionist_id: 999)
    expect(appointment).to_not be_valid
  end
  
end
