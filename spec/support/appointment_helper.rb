require 'faker'
require 'factory_bot_rails'

module AppointmentsHelpers

  def create_appointments
    FactoryBot.create(:appointment,
      patient_id:Patient.all.sample.id,
      nutritionist_id:Nutritionist.all.sample.id,
      date:"12/12/2021",
      content:"blablabla",
      height:1.8,
      weight:75,
      body_fat:70,
      visceral_fat:70,
      muscle_mass:30
    )
  end

    def build_appointments
    FactoryBot.build(:appointment,
      patient_id:Patient.all.sample.id,
      nutritionist_id:Nutritionist.all.sample.id,
      date:"12/12/2021",
      content:"blablabla",
      height:1.8,
      weight:75,
      body_fat:30,
      visceral_fat:30,
      muscle_mass:30
    )
  end

end