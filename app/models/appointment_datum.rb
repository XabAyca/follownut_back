class CreateAppointmentData < ApplicationRecord
  validates :date,presence:true
  validates :weight,presence:true
  validates :height,presence:true
end
