class NutritionistMailer < ApplicationMailer
 
  def welcome_email(nutritionist)
    @nutritionist = nutritionist 
    @url  = 'https://follownut.herokuapp.com/' 
    mail(to: @nutritionist.email, subject: 'Bienvenue chez nous !') 
  end

  def reset_password_email(nutritionist)
    @nutritionist = nutritionist 
    @url ="https://follownut.herokuapp.com/password-reset-nutritionist/#{nutritionist.reset_password_token}"
    mail(to: @nutritionist.email, subject: "Mot de passe oublié FollowNut'") 
  end

  def goodbye_email(nutritionist)
    @nutritionist = nutritionist
    @url  = 'https://follownut.herokuapp.com/' 
    mail(to: @nutritionist.email, subject: "Ce n'est qu'un au revoir") 
  end
  
end