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
patients_count = 0
nutritionists_count = 0
appointments_count = 0
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
nutritionists_count += 1
system("clear")
puts "#{nutritionists_count} nutritionists created"
puts "|"+("█"*(nutritionists_count))+(" "*((5-nutritionists_count)))+"|"

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
nutritionists_count += 1
system("clear")
puts "#{nutritionists_count} nutritionists created"
puts "|"+("█"*(nutritionists_count))+(" "*((5-nutritionists_count)))+"|"

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
nutritionists_count += 1
system("clear")
puts "#{nutritionists_count} nutritionists created"
puts "|"+("█"*(nutritionists_count))+(" "*((5-nutritionists_count)))+"|"

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
nutritionists_count += 1
system("clear")
puts "#{nutritionists_count} nutritionists created"
puts "|"+("█"*(nutritionists_count))+(" "*((5-nutritionists_count)))+"|"

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
nutritionists_count += 1
system("clear")
puts "#{nutritionists_count} nutritionists created"
puts "|"+("█"*(nutritionists_count))+(" "*((5-nutritionists_count)))+"|"
############################################

############################################
####################### Create patients
patients_number.times do |i|
  patients_count += 1
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
  puts "#{patients_count} patients created"
  puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"
end
############################################

############################################
####################### Create appointments
Patient.all.each do |patient|
  
  Appointment.create(
    patient_id:patient.id,
    nutritionist_id:patient.nutritionist.id,
    date:"22-07-2021 14:00",
    content:Faker::Lorem.paragraph_by_chars(number: 500),
    height:1.74,
    weight:95,
    body_fat:30,
    visceral_fat:12,
    muscle_mass:50
  )
  appointments_count +=1
  system("clear")
  puts "#{appointments_count} appointments created"
  puts "|"+("█"*((appointments_count))+(" "*(45-appointments_count)+"|"))
  
  Appointment.create(
    patient_id:patient.id,
    nutritionist_id:patient.nutritionist.id,
    date:"27-08-2021 16:00",
    content:Faker::Lorem.paragraph_by_chars(number: 500),
    height:1.74,
    weight:94,
    body_fat:28,
    visceral_fat:11,
    muscle_mass:51
  )
  appointments_count +=1
  system("clear")
  puts "#{appointments_count} appointments created"
  puts "|"+("█"*((appointments_count))+(" "*(45-appointments_count)+"|"))
  
  Appointment.create(
    patient_id:patient.id,
    nutritionist_id:patient.nutritionist.id,
    date:"19-09-2021 09:00",
    content:Faker::Lorem.paragraph_by_chars(number: 500),
    height:1.74,
    weight:90,
    body_fat:24,
    visceral_fat:10,
    muscle_mass:53
  )
  appointments_count +=1
  system("clear")
  puts "#{appointments_count} appointments created"
  puts "|"+("█"*((appointments_count))+(" "*(45-appointments_count)+"|"))
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