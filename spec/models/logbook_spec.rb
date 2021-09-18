require 'rails_helper'

RSpec.describe Logbook, type: :model do

  before (:all)do
    FactoryBot.create(:patient)
    @logbook1 = FactoryBot.build(:logbook)
  end

  after (:all) do
    Logbook.destroy_all
    Patient.destroy_all
  end

  it "is valid with valid attributes" do
    expect(@logbook1).to be_valid
  end

  it "is not valid without title" do
    logbook = FactoryBot.build(:logbook, title: nil)
    expect(logbook).to_not be_valid
  end

  it "is not valid without content" do
    logbook = FactoryBot.build(:logbook, content: nil)
    expect(logbook).to_not be_valid
  end
  
  it "is not valid without patient_id" do
    logbook = FactoryBot.build(:logbook, patient_id: nil)
    expect(logbook).to_not be_valid
  end

  it "is not valid with inexting patient_id" do
    logbook = FactoryBot.build(:logbook, patient_id: 999)
    expect(logbook).to_not be_valid
  end
  
end 

  