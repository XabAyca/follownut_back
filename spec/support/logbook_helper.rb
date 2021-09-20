require 'faker'
require 'factory_bot_rails'

module LogbooksHelpers

  def create_logbooks
    FactoryBot.create(:logbook,
      patient_id:Patient.all.sample.id,
      title:"title",
      content:"blablabla",
      is_shared: true
    )
  end

end