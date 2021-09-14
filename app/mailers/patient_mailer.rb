class PatientMailer < ApplicationMailer
 
  def welcome_email(patient)
    @patient = patient 
    @url  = 'https://follownut.herokuapp.com/' 
    mail(to: @patient.email, subject: 'Bienvenue chez nous !') 
  end
  
end