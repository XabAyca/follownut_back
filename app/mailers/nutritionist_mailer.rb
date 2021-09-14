class NutritionistMailer < ApplicationMailer
 
  def welcome_email(nutritionist)
    @nutritionist = nutritionist 
    @url  = 'https://follownut.herokuapp.com/' 
    mail(to: @nutritionist.email, subject: 'Bienvenue chez nous !') 
  end
  
end