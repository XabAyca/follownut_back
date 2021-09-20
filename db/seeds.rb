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
p "-" * 50
p "-" * 50

############################################
patients_number = 15
nutritionists_number = 5
appointments_number = 20
logbooks_number = 10
############################################

# Create nutritionists
nutritionists_number.times do |i|
  Nutritionist.create(
    first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    phone_number:Faker::PhoneNumber.phone_number,
    api_key:"LHCEDBKOUYNDAX5PV5SFGY3OB3TUPGCF#{i}",
    slug_calendly:"https://calendly.com/#{Faker::Name.first_name}",
    avatar:'https://i.pravatar.cc/300',
    email:Faker::Internet.free_email,
    password:"azerty123",
    password_confirmation:"azerty123",
  )
  system("clear")
  puts "#{i+1} nutritionists created"
  puts "|"+("█"*(i+1))+(" "*((nutritionists_number-1)-i))+"|"
end

# Create patients
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

# Create appointments
appointments_number.times do |i|
  Appointment.create(
    patient_id:Patient.all.sample.id,
    nutritionist_id:Nutritionist.all.sample.id,
    date:Faker::Date.between(from: 1.year.ago, to: Date.today),
    content:Faker::Lorem.paragraph_by_chars(number: 500),
    height:rand(1.5...1.9),
    weight:rand(45...100),
    body_fat:rand(10...35),
    visceral_fat:rand(10...35),
    muscle_mass:rand(40...60),
    BMI:rand(20...30),
  )
  system("clear")
  puts "#{i+1} appointments created"
  puts "|"+("█"*((i+1)/2))+(" "*(((appointments_number-1)-i)/2))+"|"
end

# Create logbooks
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

puts ""
puts "Enjoy 🥃 !!!"
puts "----------->"