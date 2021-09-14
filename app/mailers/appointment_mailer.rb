class AppointmentMailer < ApplicationMailer
 
  def new_appointment_email(patient)
    @patient = patient 
    @url  = 'https://follownut.herokuapp.com/' 
    mail(to: @patient.email, subject: 'Bienvenue chez nous !') 
  end
  
end