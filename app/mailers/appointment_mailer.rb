class AppointmentMailer < ApplicationMailer
 
  def new_appointment_email(appointment)
    @appointment = appointment
    mail(to: @appointment.patient.email, subject: 'Votre compte rendu est en ligne !') 
  end
  
end