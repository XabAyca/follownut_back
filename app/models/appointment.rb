class Appointment < ApplicationRecord

  ## Validations
  validates :date,presence:true
  validates :weight,presence:true
  validates :height,presence:true
  validates :body_fat, presence:true
  validates :muscle_mass, presence:true
  validates :visceral_fat, presence:true
  validates :content, presence:true
  
  ## Relations
  belongs_to :patient
  belongs_to :nutritionist

  ## Methods
  after_create :new_appointment

  def new_appointment
    AppointmentMailer.new_appointment_email(self).deliver_now
  end

end