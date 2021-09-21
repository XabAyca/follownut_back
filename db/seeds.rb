Faker::Config.locale = 'fr'
p "*" * 50
p " " * 50
p "                 STARTING SEEDING                 "
p " " * 50
p "*" * 50

p "Destroy curent data..."

p "Destroying Patients... #{Patient.count} "
Patient.destroy_all

p "Destroying Nutritionists... #{Nutritionist.count} "
Nutritionist.destroy_all

p "Destroying Appointments... #{Appointment.count} "
Appointment.destroy_all

p "Destroying Logbooks... #{Logbook.count} "
Logbook.destroy_all

p "Destroying Articles... #{Article.count} "
Article.destroy_all

p "-" * 50
p "-" * 50

############################################
patients_number = 15
nutritionists_number = 0
appointments_number = 20
logbooks_number = 10
articles_number = 10
############################################

############################################
###################### Create nutritionists
Nutritionist.create(
  first_name:"Jean Marie",
  last_name:"Abbadie",
  phone_number:"0668564795",
  api_key:"OEIEKAOK37EM3UBW6RPLBBSXKND62MW5",
  slug_calendly:"https://calendly.com/jean-marie-abbadie",
  avatar:'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',
  email:"jean-marie@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
)
nutritionists_number += 1
system("clear")
puts "#{nutritionists_number} nutritionists created"
puts "|"+("█"*(nutritionists_number))+(" "*((5-nutritionists_number)))+"|"

Nutritionist.create(
  first_name:"Emilie",
  last_name:"Laporte",
  phone_number:"0685987435",
  api_key:"AFMOLLOM6TJPWZFWV5JAPCRU2IOHPVKK",
  slug_calendly:"https://calendly.com/emilie-laporte",
  avatar:'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-774909.jpg&fm=jpg',
  email:"emilie-laporte@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
)
nutritionists_number += 1
system("clear")
puts "#{nutritionists_number} nutritionists created"
puts "|"+("█"*(nutritionists_number))+(" "*((5-nutritionists_number)))+"|"

Nutritionist.create(
  first_name:"Estelle",
  last_name:"Pastrani",
  phone_number:"0645987426",
  api_key:"FKKHNOIDYYPDV2BZWXOLBJ7TRZZFRPY3",
  slug_calendly:"https://calendly.com/estelle-pastrani",
  avatar:'https://images.pexels.com/photos/712521/pexels-photo-712521.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-712521.jpg&fm=jpg',
  email:"estelle-pastrani@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
)
nutritionists_number += 1
system("clear")
puts "#{nutritionists_number} nutritionists created"
puts "|"+("█"*(nutritionists_number))+(" "*((5-nutritionists_number)))+"|"

Nutritionist.create(
  first_name:"Martin",
  last_name:"Matin",
  phone_number:"0689986526",
  api_key:"BOLIDAOPS5LE7YHS6YCLPVGKLAJZGOW3",
  slug_calendly:"https://calendly.com/martin-matin",
  avatar:'https://images.pexels.com/photos/9418216/pexels-photo-9418216.jpeg?cs=srgb&dl=pexels-cottonbro-9418216.jpg&fm=jpg',
  email:"martin-matin@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
)
nutritionists_number += 1
system("clear")
puts "#{nutritionists_number} nutritionists created"
puts "|"+("█"*(nutritionists_number))+(" "*((5-nutritionists_number)))+"|"

Nutritionist.create(
  first_name:"Marie",
  last_name:"DeLaRue",
  phone_number:"0689984526",
  api_key:"CONFMGPA26PBWRCV25FKCVDPN7KBBAKB",
  slug_calendly:"https://calendly.com/martin-matin",
  avatar:'https://images.pexels.com/photos/4612249/pexels-photo-4612249.jpeg?cs=srgb&dl=pexels-anthony-shkraba-4612249.jpg&fm=jpg',
  email:"marie-delarue@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
)
nutritionists_number += 1
system("clear")
puts "#{nutritionists_number} nutritionists created"
puts "|"+("█"*(nutritionists_number))+(" "*((5-nutritionists_number)))+"|"
############################################

############################################
####################### Create patients
patients_number.times do |i|
  Patient.create(
    first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 70),
    email:Faker::Internet.free_email,
    password:"azerty123",
    password_confirmation:"azerty123",
    nutritionist_id:Nutritionist.all.sample.id,
  )
  system("clear")
  puts "#{i+1} patients created"
  puts "|"+("█"*(i+1))+(" "*((patients_number-1)-i))+"|"
end
############################################

############################################
####################### Create appointments
appointments_number.times do |i|
  patient = Patient.all.sample
  Appointment.create(
    patient_id:patient.id,
    nutritionist_id:patient.nutritionist.id,
    date:Faker::Date.between(from: 1.year.ago, to: Date.today),
    content:Faker::Lorem.paragraph_by_chars(number: 500),
    height:rand(1.5...1.9),
    weight:rand(45...100),
    body_fat:rand(10...35),
    visceral_fat:rand(10...35),
    muscle_mass:rand(40...60)
  )
  system("clear")
  puts "#{i+1} appointments created"
  puts "|"+("█"*((i+1)/2))+(" "*(((appointments_number-1)-i)/2))+"|"
end
############################################

############################################
####################### Create logbooks
logbooks_number.times do |i|
  Logbook.create(
    patient_id: Patient.all.sample.id,
    title: Faker::Lorem.question(word_count: 20),
    content: Faker::Lorem.paragraph(sentence_count: 15),
  )
  system("clear")
  puts "#{i+1} logbooks created"
  puts "|"+("█"*((i+1)/2))+(" "*(((logbooks_number-1)-i)/2))+"|"
end
############################################

############################################
####################### Create articles
articles_number.times do |i|
  Article.create(
    title: Faker::Lorem.question(word_count: 20),
    content: Faker::Lorem.paragraph(sentence_count: 15),
    nutritionist_id: Nutritionist.all.sample.id,
  )
  system("clear")
  puts "#{i+1} articles created"
  puts "|"+("█"*((i+1)/2))+(" "*(((articles_number-1)-i)/2))+"|"
end
############################################

puts ""
puts "Enjoy 🥃 !!!"
puts "----------->"