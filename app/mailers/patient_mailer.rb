class PatientMailer < ApplicationMailer
 
  def welcome_email(patient)
    @patient = patient 
    @url  = 'https://follownut.herokuapp.com/' 
    mail(to: @patient.email, subject: 'Bienvenue chez nous !') 
  end

  def reset_password_email(patient)
    @patient = patient 
    @url ="https://follownut.herokuapp.com/password-reset-patient/#{patient.reset_password_token}"
    mail(to: @patient.email, subject: "Mot de passe oublié FollowNut'") 
  end

  def goodbye_email(patient)
    @patient = patient
    @url  = 'https://follownut.herokuapp.com/' 
    mail(to: @patient.email, subject: "Ce n'est qu'un au revoir") 
  end

end