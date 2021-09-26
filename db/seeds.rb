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
nutritionists_number = 5
nutritionists_count = 0
appointments_number = 45
appointments_count = 0
logbooks_number = 30
logbooks_count = 0
articles_number = 10
articles_count = 0
############################################


############################################
###################### Create nutritionists
Nutritionist.create(
  first_name:"Jean Marie",
  last_name:"Abbadie",
  phone_number:"0668564795",
  slug_calendly:"https://calendly.com/jean-marie-abbadie",
  avatar:'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',
  email:"jean-marie@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
)
nutritionists_count += 1
system("clear")
puts "#{nutritionists_count} nutritionists created"
puts "|"+("█"*(nutritionists_count))+(" "*((nutritionists_number-nutritionists_count)))+"|"


Nutritionist.create(
  first_name:"Emilie",
  last_name:"Laporte",
  phone_number:"0685987435",
  slug_calendly:"https://calendly.com/emilie-laporte",
  avatar:'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-774909.jpg&fm=jpg',
  email:"emilie-laporte@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
)
nutritionists_count += 1
system("clear")
puts "#{nutritionists_count} nutritionists created"
puts "|"+("█"*(nutritionists_count))+(" "*((nutritionists_number-nutritionists_count)))+"|"


Nutritionist.create(
  first_name:"Estelle",
  last_name:"Pastrani",
  phone_number:"0645987426",
  slug_calendly:"https://calendly.com/estelle-pastrani",
  avatar:'https://images.pexels.com/photos/712521/pexels-photo-712521.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-712521.jpg&fm=jpg',
  email:"estelle-pastrani@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
)
nutritionists_count += 1
system("clear")
puts "#{nutritionists_count} nutritionists created"
puts "|"+("█"*(nutritionists_count))+(" "*((nutritionists_number-nutritionists_count)))+"|"


Nutritionist.create(
  first_name:"Martin",
  last_name:"Matin",
  phone_number:"0689986526",
  slug_calendly:"https://calendly.com/martin-matin",
  avatar:'https://images.pexels.com/photos/9418216/pexels-photo-9418216.jpeg?cs=srgb&dl=pexels-cottonbro-9418216.jpg&fm=jpg',
  email:"martin-matin@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
)
nutritionists_count += 1
system("clear")
puts "#{nutritionists_count} nutritionists created"
puts "|"+("█"*(nutritionists_count))+(" "*((nutritionists_number-nutritionists_count)))+"|"


Nutritionist.create(
  first_name:"Marie",
  last_name:"DeLaRue",
  phone_number:"0689984526",
  slug_calendly:"https://calendly.com/marie-delarue",
  avatar:'https://images.pexels.com/photos/4612249/pexels-photo-4612249.jpeg?cs=srgb&dl=pexels-anthony-shkraba-4612249.jpg&fm=jpg',
  email:"marie-delarue@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
)
nutritionists_count += 1
system("clear")
puts "#{nutritionists_count} nutritionists created"
puts "|"+("█"*(nutritionists_count))+(" "*((nutritionists_number-nutritionists_count)))+"|"
############################################

############################################
####################### Create patients
Patient.create(
  first_name:"Audrey",
  last_name: "Gergo",
  date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 70),
  gender: 2,
  email: "audrey.gergo@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Antoine",
  last_name: "Marquez",
  date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 70),
  gender: 1,
  email: "antoine.marquez@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Julia",
  last_name: "Laroche",
  date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 70),
  gender: 2,
  email: "julia.laroche@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Marc",
  last_name: "Despres",
  date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 70),
  gender: 1,
  email: "marc.despres@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Coralie",
  last_name: "Chapuis",
  date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 70),
  gender: 2,
  email: "coralie.chapuis@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Amandine",
  last_name: "Salvi",
  date_of_birth: "1992-11-14",
  gender: 2,
  email: "amandine.salvi@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Bastien",
  last_name: "Arno",
  date_of_birth: "1998-09-21",
  gender: 1,
  email: "bastien.arno@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Alexandre",
  last_name: "Bertin",
  date_of_birth: "1987-02-14",
  gender: 1,
  email: "alexandre.bertin@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Nicolas",
  last_name: "Deschamp",
  date_of_birth: "1963-07-16",
  gender: 1,
  email: "nicolas.deschamp@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Melanie",
  last_name: "Lano",
  date_of_birth: "1983-04-18",
  gender: 2,
  email: "melanie.lano@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|" 


Patient.create(
  first_name:"Hugo",
  last_name: "fournier",
  date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 70),
  gender: 1,
  email: "hugo.fournier@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Karen",
  last_name: "Chan",
  date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 70),
  gender: 2,
  email: "karen.chan@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Allison",
  last_name: "Pico",
  date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 70),
  gender: 2,
  email: "allison.pico@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Eric",
  last_name: "Mayeul",
  date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 70),
  gender: 1,
  email: "eric.mayeul@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"


Patient.create(
  first_name:"Asim",
  last_name: "Al-massati",
  date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 70),
  gender: 1,
  email: "asim.almassati@yopmail.com",
  password:"azerty123",
  password_confirmation:"azerty123",
  nutritionist_id:Nutritionist.all.sample.id,
)
patients_count += 1
system("clear")
puts "#{patients_count} patients created"
puts "|"+("█"*patients_count)+(" "*(patients_number-patients_count))+"|"
############################################

############################################
####################### Create appointments
patient = Patient.find(1) 
Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date:"25/05/2021 14:00",
  content:"Premier rendez-vous : mise en place d'un règime hypo calorique pour perte de poids rapide",
  height:1.74,
  weight:95,
  body_fat:30,
  visceral_fat:12,
  muscle_mass:50
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "21/06/2021 16:00",
  content:"La perte de poids a été bien entamé. La patient suit correctement le plan alimentaire. Il parait satisfait et supporte bien les consignes. Pas de soucis à signaler.",
  height:1.74,
  weight:94,
  body_fat:28,
  visceral_fat:11,
  muscle_mass:51
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "22/07/2021 14:00",
  content:"Grosse perte de poids sur ce mois. La patient est très satisfait. Nous avons décidé d'entamer la seconde partie avec la phase de stabilisation. Mise en place d'un nouveau plan alimentaire avec réintroduction progressive des aliments légèrement sucré?",
  height:1.74,
  weight:90,
  body_fat:24,
  visceral_fat:10,
  muscle_mass:53
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

patient = Patient.find(2) 
Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date:"12/04/2021 14:00",
  content:"Premier rendez-vous : mise en place d'un plan alimentaire HP pour sportif",
  height:1.83,
  weight:80,
  body_fat:20,
  visceral_fat:10,
  muscle_mass:50
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "16/05/2021 10:00",
  content:"Le patient supporte bien son nouveau plan alimentaire. La prise de masse musculaire commence. Il semble moins fatigué et plus performant. On continue.",
  height:1.83,
  weight:82,
  body_fat:19,
  visceral_fat:9,
  muscle_mass:51
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "21/06/2021 13:00",
  content:"Très satisfait, les performances du patient ont explosé. Celui-ci veut continuer, il est ravis. Seul bémol quelques gazs. On revoit légèrement l'apport en protéine.",
  height:1.83,
  weight:82,
  body_fat:19,
  visceral_fat:10,
  muscle_mass:53
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

patient = Patient.find(3) 
Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date:"24/04/2021 14:00",
  content:"Premier rendez-vous : mise en place d'un régime drastique",
  height:1.60,
  weight:95,
  body_fat:30,
  visceral_fat:15,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "29/05/2021 10:00",
  content:"Le patient supporte mal son régime restrictif. Il a faim et grignotte souvent. Je lui ai expliqué l'importance d'être sérieux sur ce plan alimentaire pour sa santé (cardiaque, obésité morbide, ...)",
  height:1.60,
  weight:92,
  body_fat:29,
  visceral_fat:14,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "23/06/2021 10:00",
  content:"Dernier RDV. Le patient ne veut plus continuer le suivi malgré la perte de poids entamée.",
  height:1.60,
  weight:89,
  body_fat:28,
  visceral_fat:13,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

patient = Patient.find(4) 
Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date:"03/04/2021 10:00",
  content:"Premier rendez-vous : changement alimentaire. La patient souhaite devenir végétarien. Explication des besoins et comment s'y préparer",
  height:1.76,
  weight:69,
  body_fat:22,
  visceral_fat:11,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "11/05/2021 16:00",
  content:"La patient supporte plutôt bien son nouveau régime àlimentaire. On passe à l'étape 2 : présentation des recettes et les aliments inconnus. Passé du lat préparé au fait maison.",
  height:1.76,
  weight:68,
  body_fat:22,
  visceral_fat:11,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "16/06/2021 10:00",
  content:"La ptient a été très réceptif, ravie de ce changement et à l'aise dans ses nouvelles habitudes. Prochain RDV dans 6 mois pour évaluer l'évolution du ses besoins",
  height:1.76,
  weight:69,
  body_fat:22,
  visceral_fat:11,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

patient = Patient.find(5) 
Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date:"09/08/2020 14:00",
  content:"Premier rendez-vous : Patient atteint de TCA. Gros travail à faire sur l'limentation en général. Poids beaucoup trop bas, si aucune évolution une hospitalisation sera nécessaire",
  height:1.76,
  weight:50,
  body_fat:14,
  visceral_fat:8,
  muscle_mass:30
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "11/09/2020 16:00",
  content:"Le patient a du mal à suivre son plan alimentaire et ment sur ce qu'il mange. Je lui propose de rencontrer un psy pour l'aider dans sa démarche.",
  height:1.76,
  weight:52,
  body_fat:15,
  visceral_fat:8,
  muscle_mass:30
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "13/10/2020 10:00",
  content:"Le patient a fait les démarches nécessaire et évolue lentement. Je lui demande de controler régulièrement ses constantes. En cas de chute sous les 45 kg on l'hospitalise.",
  height:1.76,
  weight:53,
  body_fat:15,
  visceral_fat:8,
  muscle_mass:30
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

patient = Patient.find(6) 
Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "27/01/2021 11:00",
  content: "Premier rendez-vous avec Amandine qui a un léger surpoids. Mise en place d'un plan de réquilibrage alimentaire.",
  height: 1.63,
  weight: 63,
  body_fat: 35,
  visceral_fat: 15,
  muscle_mass: 31
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "26/03/2021 16:00",
  content: "Des progrés encourageant. Amandine a perdu 3kg par rapport à notre dernier rendez-vous, 1cm de tour de taille de gagné.",
  height: 1.63,
  weight: 61,
  body_fat: 34,
  visceral_fat: 14,
  muscle_mass: 31
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "02/06/2021 10:00",
  content: "Amandine a persévéré et est revenue sur une echelle de poids normale pour sa physionomie. Encore quelques semaines et elle aura atteint son objectif de 56 kg.",
  height: 1.63,
  weight: 58,
  body_fat: 32,
  visceral_fat: 12,
  muscle_mass: 32
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))



patient = Patient.find(7) 
Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "13/02/2021 09:00",
  content: "M. Arno pratique la course longue distance en compétition. et me rencontre donc aujourd'hui pour travailler sur son alimentation et ainsi améliorer ses phases de récuperation.",
  height: 1.78,
  weight: 69,
  body_fat: 15,
  visceral_fat: 10,
  muscle_mass: 47
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "21/03/2021 16:00",
  content: "Rien à signaler depuis notre dernier rendez-vous. Tous les voyants sont au vert.",
  height: 1.78,
  weight: 68,
  body_fat: 14.5,
  visceral_fat: 10,
  muscle_mass: 47
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "08/05/2021 11:00",
  content: "M. Arno a pris un peu de poids en raison d'une période d'inactivité consécutive à une blessure.",
  height: 1.78,
  weight: 71,
  body_fat: 16,
  visceral_fat: 11,
  muscle_mass: 47
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))


patient = Patient.find(8) 
Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "14/01/2021 14:00",
  content: "Première rencontre avec M. Bertin qui présente une surcharge pondérale d'environ 15 kg malgré ses efforts pour perdre du poids. Mise en place d'un régime hypocalorique.",
  height: 1.95,
  weight: 101,
  body_fat: 25,
  visceral_fat: 14,
  muscle_mass: 59
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "04/02/2021 10:00",
  content: "De très bons resultats en l'espace de 3 semaines avec une perte de poids de 4kg. M. Bertin a suivi mes conseils en ajoutant plus de légumes à son alimentation et en arrêtant de grignoter entre les repas.",
  height: 1.95,
  weight: 97,
  body_fat: 24,
  visceral_fat: 13.5,
  muscle_mass: 59
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "02/03/2021 10:00",
  content: "2 kg supplémentaires de perdu. M. Bertin est sur la bonne voie.",
  height: 1.95,
  weight: 95,
  body_fat: 23,
  visceral_fat: 12.5,
  muscle_mass: 59
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))



patient = Patient.find(9) 
Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "28/06/2021 14:30",
  content: "M. Deschamp me rencontre pour la première fois aujourd'hui. Au cours des dix dernières années, il n'a pas été particulièrement actif sur le plan sportif et n'a pas fait attention à son alimentation, et les kilos se sont accumulés. Son objectif est de courir un marathon l'année prochaine, mais il doit absolument perdre du poids pour y parvenir.",
  height: 1.81,
  weight: 81,
  body_fat: 20,
  visceral_fat: 14,
  muscle_mass: 48
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "29/07/2021 16:00",
  content: "Le premier mois n'a pas été facile mais il y a quand même une perte de poids significative, et le sommeil du patient s'est amélioré.",
  height: 1.81,
  weight: 79.5,
  body_fat: 19,
  visceral_fat: 13.5,
  muscle_mass: 48
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "02/09/2021 10:00",
  content: "Des résultats dans la continuité de ce qui a été observé précédemment. Je conseille maintenant au patient de varier les sports, par exemple d'ajouter du vélo et/ou de la natation pour stimuler la prise de muscle.",
  height: 1.81,
  weight: 76,
  body_fat: 18,
  visceral_fat: 13,
  muscle_mass: 48.5
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))



patient = Patient.find(10) 
Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "19/05/2021 15:00",
  content: "Mme. Lano approche la quarantaine et souhaiterait perdre du poids maintenant que tous ses enfants sont à l'école. Nous avons décidé ensemble de fixer 53kg comme objectif.",
  height: 1.59,
  weight: 60,
  body_fat: 25,
  visceral_fat: 15,
  muscle_mass: 35
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "23/06/2021 16:00",
  content: "Des résultats plus qu'encourageant après 1 premier mois à suivre le plan de rééquilibrage alimentaire mis en place lors de la session précédente.",
  height: 1.59,
  weight: 57.5,
  body_fat: 23,
  visceral_fat: 14,
  muscle_mass: 35.5
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id: patient.id,
  nutritionist_id: patient.nutritionist.id,
  date: "27/07/2021 10:00",
  content: "Les efforts continuent de payer et Mme. Lano est a mi parcourt. Nous décidons aujourd'hui d'ajouter 2 séances de sport par semaine afin d'accélérer la perte de poids.",
  height: 1.59,
  weight: 56,
  body_fat: 22,
  visceral_fat: 13.5,
  muscle_mass: 35.5
)
appointments_count += 1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

patient = Patient.find(11) 
Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date:"25/05/2021 16:00",
  content:"Premier rendez-vous : mise en place d'un règime hypo calorique pour perte de poids rapide",
  height:1.74,
  weight:95,
  body_fat:30,
  visceral_fat:12,
  muscle_mass:50
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "26/06/2021 16:00",
  content:"La perte de poids a été bien entamé. La patient suit correctement le plan alimentaire. Il parait satisfait et supporte bien les consignes. Pas de soucis à signaler.",
  height:1.74,
  weight:94,
  body_fat:28,
  visceral_fat:11,
  muscle_mass:51
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "22/07/2021 10:00",
  content:"Grosse perte de poids sur ce mois. La patient est très satisfait. Nous avons décidé d'entamer la seconde partie avec la phase de stabilisation. Mise en place d'un nouveau plan alimentaire avec réintroduction progressive des aliments légèrement sucré?",
  height:1.74,
  weight:90,
  body_fat:24,
  visceral_fat:10,
  muscle_mass:53
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

patient = Patient.find(12) 
Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date:"15/01/2021 14:00",
  content:"Premier rendez-vous : mise en place d'un plan alimentaire HP pour sportif",
  height:1.83,
  weight:80,
  body_fat:20,
  visceral_fat:10,
  muscle_mass:50
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "26/02/2021 16:00",
  content:"Le patient supporte bien son nouveau plan alimentaire. La prise de masse musculaire commence. Il semble moins fatigué et plus performant. On continue.",
  height:1.83,
  weight:82,
  body_fat:19,
  visceral_fat:9,
  muscle_mass:51
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "22/03/2021 10:00",
  content:"Très satisfait, les performances du patient ont explosé. Celui-ci veut continuer, il est ravis. Seul bémol quelques gazs. On revoit légèrement l'apport en protéine.",
  height:1.83,
  weight:82,
  body_fat:19,
  visceral_fat:10,
  muscle_mass:53
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

patient = Patient.find(13) 
Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date:"13/03/2021 14:00",
  content:"Premier rendez-vous : mise en place d'un régime drastique",
  height:1.60,
  weight:95,
  body_fat:30,
  visceral_fat:15,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "14/04/2021 16:00",
  content:"Le patient supporte mal son régime restrictif. Il a faim et grignotte souvent. Je lui ai expliqué l'importance d'être sérieux sur ce plan alimentaire pour sa santé (cardiaque, obésité morbide, ...)",
  height:1.60,
  weight:92,
  body_fat:29,
  visceral_fat:14,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "22/05/2021 10:00",
  content:"Dernier RDV. Le patient ne veut plus continuer le suivi malgré la perte de poids entamée.",
  height:1.60,
  weight:89,
  body_fat:28,
  visceral_fat:13,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

patient = Patient.find(14) 
Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date:"28/04/2021 17:00",
  content:"Premier rendez-vous : changement alimentaire. La patient souhaite devenir végétarien. Explication des besoins et comment s'y préparer",
  height:1.76,
  weight:69,
  body_fat:22,
  visceral_fat:11,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "27/05/2021 16:00",
  content:"La patient supporte plutôt bien son nouveau régime àlimentaire. On passe à l'étape 2 : présentation des recettes et les aliments inconnus. Passé du lat préparé au fait maison.",
  height:1.76,
  weight:68,
  body_fat:22,
  visceral_fat:11,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "25/06/2021 10:00",
  content:"La ptient a été très réceptif, ravie de ce changement et à l'aise dans ses nouvelles habitudes. Prochain RDV dans 6 mois pour évaluer l'évolution du ses besoins",
  height:1.76,
  weight:69,
  body_fat:22,
  visceral_fat:11,
  muscle_mass:40
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

patient = Patient.find(15) 
Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date:"25/04/2021 14:00",
  content:"Premier rendez-vous : Patient atteint de TCA. Gros travail à faire sur l'limentation en général. Poids beaucoup trop bas, si aucune évolution une hospitalisation sera nécessaire",
  height:1.76,
  weight:50,
  body_fat:14,
  visceral_fat:8,
  muscle_mass:30
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "26/05/2021 16:00",
  content:"Le patient a du mal à suivre son plan alimentaire et ment sur ce qu'il mange. Je lui propose de rencontrer un psy pour l'aider dans sa démarche.",
  height:1.76,
  weight:52,
  body_fat:15,
  visceral_fat:8,
  muscle_mass:30
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

Appointment.create(
  patient_id:patient.id,
  nutritionist_id:patient.nutritionist.id,
  date: "22/06/2021 10:00",
  content:"Le patient a fait les démarches nécessaire et évolue lentement. Je lui demande de controler régulièrement ses constantes. En cas de chute sous les 45 kg on l'hospitalise.",
  height:1.76,
  weight:53,
  body_fat:15,
  visceral_fat:8,
  muscle_mass:30
)
appointments_count +=1
system("clear")
puts "#{appointments_count} appointments created"
puts "|"+("█"*((appointments_count))+(" "*(appointments_number-appointments_count)+"|"))

############################################

############################################
####################### Create logbooks
Logbook.create(
  patient_id: 1,
  title: "Entrainement lundi 15 aout",
  content: "- 50 pompes \n- 20 tractions \n- 30 minutes de course",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 1,
  title: "Repas mercredi 17 aout",
  content: "- 100g de riz \n- 150g de poulet \n- 1 part de tarte aux fraises",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 2,
  title: "Dimanche 21 septembre",
  content: "2h de marche le long de la Seine",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 2,
  title: "Repas de Noel",
  content: "- 1 tranche de foie gras \n- 6 huitres \n- 1 steak frites \n- 1 grosse assiette de fromage \n- 1 part de gateau au chocolat",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 3,
  title: "Mardi 2 juin",
  content: "Impossible de manger quoi que ce soit. Hier soir j'ai trop mangé et maintenant j'ai des maux de ventre et je n'ai pas faim.",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 3,
  title: "Jogging du dimanche 7 jullet",
  content: "21km de course en 2h30",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 4,
  title: "Déjeuner du 30 septembre",
  content: "Je viens de terminer de manger. J'avais très faim avant le repas, et j'ai manger trop vite. Maintenant je me sens balloné",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 4,
  title: "Rando VTT 19 avril",
  content: "Aujourd'hui c'est ma première sortie VTT depuis la fin de l'hiver. C'est parti pour 2h de vélo",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 5,
  title: "27 mai, petit déjeuner",
  content: "Je n'ai plus rien à manger à la maison, du coup j'ai manger le petit déjeuner chez McDo.",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 5,
  title: "Sortie shooping",
  content: "Cet après-midi c'était shopping, et pause snack vers 16h. J'ai mangé une glace",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"

Logbook.create(
  patient_id: 6,
  title: "Sensation de faim",
  content: "J'ai beaucou de mal à assumer cette sensation de faim qui m'obsède aujourd'hui",
  is_shared: false,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 6,
  title: "Sortie avec les amis",
  content: "Lors de notre sortie avec les amis j'ai pris un croissant avec mon café",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"

Logbook.create(
  patient_id: 7,
  title: "Les lasagnes",
  content: "Manger des lasagnes 2 fois par jour est il mauvais pour la santé ?",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 7,
  title: "Perte de poids",
  content: "Aujourd'hui je suis fier de moi, ma balance affiche 3 kg de moins",
  is_shared: false,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"

Logbook.create(
  patient_id: 8,
  title: "Végé",
  content: "C'est décidé j'arr^te la viande et deviens Vegan extrêmiste!",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 8,
  title: "Les pauvres",
  content: "L'industrie de la viande est un ennemie de la VIE. Vive Nicolas Hulot",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"

Logbook.create(
  patient_id: 9,
  title: "J'ai faim",
  content: "Ce régime hyper protéiné me donne des gaz... En plus j'ai faim",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 9,
  title: "Céleri",
  content: "Note à moi même: le céleri c'est pas bon",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"

Logbook.create(
  patient_id: 10,
  title: "Petite faim",
  content: "Ce jour j'ai mangé une barre chocolat mais pas plus...",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 10,
  title: "Alcool",
  content: "Hier soirée, j'ai craqué... j'ai bu 10 pintes...",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"

Logbook.create(
  patient_id: 11,
  title: "Sport",
  content: "Sortie running 10km en 55 min mon record",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 11,
  title: "Crossfit",
  content: "J'ai essayé le crossfit quel sport de brute",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"

Logbook.create(
  patient_id: 12,
  title: "natation",
  content: "Depuis 1 mois je fait 1h de natation/semaine",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 12,
  title: "Natation suite",
  content: "Mon maillot me donne des irritations aux cuisses... Ça pique",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"

Logbook.create(
  patient_id: 13,
  title: "repas lundi",
  content: "Riz, dinde, haricot vert et yaourt nature !",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 13,
  title: "repas mardi",
  content: "Double macdo ...",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"

Logbook.create(
  patient_id: 14,
  title: "repas jeudi",
  content: "Riz, dinde, haricot vert et yaourt nature !",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 14,
  title: "Note",
  content: "Le gras n'est pas mauvais si on sait le doser",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"

Logbook.create(
  patient_id: 15,
  title: "Demain repas...",
  content: "J'ai refusé une invitation par peur ge reprendre du poids",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"


Logbook.create(
  patient_id: 15,
  title: "c'est le WE",
  content: "J'ai le droit à mon repas sans restriction j'ai attendu ça toute la semaine!",
  is_shared: true,
)
logbooks_count += 1
system("clear")
puts "#{logbooks_count} logbooks created"
puts "|"+("█"*logbooks_count)+(" "*(logbooks_number-logbooks_count))+"|"
############################################

############################################
####################### Create articles
Article.create(
  nutritionist_id: 1,
  title: "Les 5 critères d’une bonne nutrition",
  content: "L’alimentation fait partie de notre mode de vie que nous le voulions ou non. L’être humain doit se nourrir afin de survivre et afin d’évoluer. Sans aliments, sans nourriture, nous ne nous développerons pas efficacement; au pire, nous mourrons. Plusieurs grands principes entourent la nourriture et la nutrition et beaucoup de mythes se sont propagés à travers les années. D’ailleurs, si vous demandez aux gens qui vous entourent ce qu’est une bonne nutrition, vous obtiendrez certainement plus d’une centaine de réponses différentes. Il est donc normal que plusieurs aient de la difficulté à se faire une idée de ce que représente une bonne alimentation. 
            Pourquoi est-ce si compliqué, que nous n’entendons jamais les mêmes choses, qu’il y-a-t-il autant de diètes ? En existe-il vraiment une bonne ? Pourquoi une diète fonctionne pour un mais pas pour l’autre ? Il s’agit en effet d’excellentes questions que beaucoup de gens se posent. Dans le but de bien comprendre pourquoi plusieurs façons de manger ne sont pas efficaces pour vous (elles ne répondent pas à votre objectif à long terme), je vous présente ce que représente une bonne nutrition. En ce sens, si vos habitudes de vie ou votre diète actuelle ne répond pas aux 5 critères qui suivent, vous n’avez pas une bonne nutrition. L’alimentation optimale sera celle qui comblera les manques que vous évaluerez suite à la lecture de cet article.
            Une bonne nutrition contrôle la balance énergétique selon vos besoins
            Le principe de balance énergétique est régi par le principe des calories : les calories consommées versus les calories dépensées. Ce principe se définit sous les lois de la thermodynamique qui contrôle les échanges d’énergie et de chaleur. Ainsi, si vous avez une balance énergétique positive (vous mangez plus que ce que vous dépensez en énergie), vous gagnez du poids et si vous avez une balance énergétique négative (vous mangez moins que ce que vous dépensez en énergie), vous perdez du poids. Cette balance énergétique aura évidemment un impact sur tous les systèmes du corps humain. C’est pourquoi un débalancement, autant positif que négatif, affectera votre poids, votre concentration, vos niveaux d’hormones, vos performances athlétiques ou sportives, autant que votre humeur, par exemple.
            Si votre alimentation actuelle ne prend pas la balance énergétique en considération, vous venez de comprendre que votre alimentation n’est pas optimale. Un expert en nutrition pourra vous aider à contrôler cette balance énergétique en fonction de vos objectifs, de votre morphologie et de votre composition corporelle.  
            Une bonne nutrition est dense en éléments nutritifs (vitamines, minéraux, phytonutriments, fibres, etc.) 
            La densité nutritionnelle d’un aliment est en fait le ratio de nutriments par rapport à sa quantité totale de calories. Ainsi, un aliment dense en nutriments contient beaucoup de vitamines comme le groupe de vitamines B, de minéraux comme le fer, le magnésium, le calcium, en plus d’avoir certains phytonutriments, par exemple. On calcule la densité nutritionnelle d’un aliment en évaluant la quantité de ces nutriments par 100 calories.  
            Aliments denses en éléments nutritifs vs. Aliments pauvres en éléments nutritifs par 100 calories 
            Ainsi, vous constatez que les aliments qui ont une importante densité nutritionnelle sont les légumes, tandis que les pires sont les aliments transformés comme les boissons gazeuses. Comme la densité nutritionnelle prend en considération l’apport énergétique (nombre de calories), il va de soi que les légumes sont les meilleurs aliments en perte de poids. Avec beaucoup de nutriments et peu de calories, ces aliments sont d’une grande qualité nutritive et engendrent un bon niveau de satiété, sans toutefois que leur ingestion n’implique une importante consommation de calories. C’est pourquoi, dans la très grande majorité des cas, nous allons recommander une plus grande proportion de légumes par rapport aux autres groupes alimentaires lors d’un repas pour un objectif de perte de poids.
            En hypertrophie musculaire, la densité nutritionnelle totale dans la journée est tout aussi importante. Cependant, la densité nutritive par aliment ne l’est pas du tout, au contraire. Pour prendre de la masse musculaire, il importe d’avoir beaucoup de nutriments et de calories à la fois. En ce sens, les féculents riches en nutriments sont un excellent choix. C’est pourquoi la patate douce, l’igname, les légumineuses et les lentilles sont d’excellents aliments en gain de masse musculaire.  
            Une bonne nutrition permet d’obtenir une meilleure santé, une composition corporelle équilibrée et de meilleures performances
            Une bonne nutrition est basée sur le long terme et n’est pas uniquement reliée à un objectif à court terme. La seule exception à ce propos serait une planification alimentaire à long terme (qui contrôle les paramètres de santé, de composition corporelle et de performance) qui implique, pour un résultat rapide, une diète à court terme. Comme la majorité des gens cherchent des résultats en fonction d’un objectif bien précis, par exemple perdre du poids, il va de soi que ces derniers soient attirés par des diètes sévères qui prennent seulement en considération la composition corporelle. Cependant, même si ces stratégies de diète ou de restriction fonctionnent pour l’atteinte de l’objectif à court terme, elles échouent inévitablement sur un processus à long terme. Les résultats de composition corporelle peuvent en effet être très motivants sur le moment, mais cela conduit assurément à des carences nutritives, sacrifiant des paramètres de santé et de bien-être. 
            Notre vision est basée sur l’amélioration des 3 paramètres devant être améliorés par la nutrition : la santé, la composition corporelle et les performances. Pourquoi ne pas diminuer le mauvais cholestérol, les tryglycérides, le diabète ou la résistance à l’insuline, l’hypertension ou un autre paramètre en lien avec la santé tout en diminuant notre pourcentage de gras et en augmentant notre force musculaire ? En travaillant avec de vrais professionnels, il est possible d’améliorer tout en même temps. C’est d’ailleurs un critère primordial pour définir une bonne alimentation.  
            Une bonne nutrition prend en considération vos problématiques de santé 
            Ceci est en quelque sorte une sous-catégorie du point précédent. En effet, une bonne nutrition doit s’assurer de maintenir ou d’améliorer votre état de santé, sans quoi on ne peut associer vos habitudes alimentaires à une bonne alimentation. Ainsi, si vous avez des problèmes de santé comme le diabète, l’arthrose, l’hypertension, trop de LDL, pas assez de HDL, « du cholestérol », de l’arthrose, de l’arthrite rhumathoide, de la fybromyalgie, le colon irritable, une colite ulcéreuse, l’instestin irritable, la maladie de Crohn, des diverticulites, des allergies ou des intolérances alimentaires, votre diète alimentaire doit prendre en considération chacune des conditions. Si vous mangez « bien », que vous perdez du poids et que vos performances s’améliorent, mais que votre maladie se détériore, votre alimentation n’est pas appropriée.
            Vous avez une belle composition corporelle et vous courez des marathons, mais vous avez des symptômes de colon irritable ? C’est un signe que votre alimentation n’est pas adaptée à votre réalité. Ce n’est donc pas une bonne alimentation. 
            Une bonne nutrition est honnête et basée sur des résultats démontrés
            « Mon alimentation est parfaite, mais je suis toujours fatigué »
            « J’ai trouvé l’alimentation qui me convenait, mais je fais encore du diabète et mon cholestérol est élevé »
            « Je mange bien, mais …
            La réponse : Trop souvent !
            Ainsi, si on résume ce point, une bonne nutrition donne des résultats mesurables !",
)
articles_count += 1
system("clear")
puts "#{articles_count} articles created"
puts "|"+("█"*articles_count)+(" "*(articles_number-articles_count))+"|"


Article.create(
  nutritionist_id: 1,
  title: "Recette de crêpes à la farine de patate douce",
  content: "Je ne prends probablement pas beaucoup de risques en avançant que tout le monde aime les crêpes. 
            Les recettes communes de crêpes posent cependant plusieurs problèmes. Elles intègrent de la farine de blé raffiné, qui contient du gluten et possède un index glycémique beaucoup trop élevé (85). Le lait est aussi de la partie, et pose entre autres le problème du lactose auquel 75 % de la population adulte mondiale est intolérante à des degrés divers, et de la caséine qui est une protéine très pro-inflammatoire.
            Fort heureusement, ces problèmes sont faciles à contourner, sans dégrader le moins du monde les qualités gustatives des sacro-saintes crêpes. 
            Les ingrédients 
            Pour une dizaine de crêpes à la farine de patate douce : 
            100 grammes de farine de patate douce 
            6 œufs bio 
            300 ml d'eau ou de lait végétal 
            facultatif : 2 à 3 cuillères à café de rapadura 
            facultatif : 1 à 1,5 cuillère à soupe de rhum ambré  
            La recette 
            Versez la farine de patate douce et le rapadura dans un saladier 
            Ajoutez les œufs et mélangez jusqu'à obtenir une pâte homohène 
            Ajoutez le lait végétal et mélangez à nouveau, jusqu'à obtenir une pâte liquide et homogène 
            Ajoutez le rhum et mélangez 
            Faites chauffer (sans excès) une poêle huilée avec un peu d'huile d'olive. Vous pouvez utiliser une feuille d’essuie-tout pour répartir l'huile dans la poêle. N'hésitez pas à remettre de l'huile d'olive entre deux crêpes pour éviter tout phénomène d'adhérence 
            Remuez la préparation pour éviter à la farine de patate douce de rester au fond du bol, remplissez une louche de pâte et versez la dans la poêle, en tournant cette dernière pour bien répartir la pâte 
            Une fois que la pâte paraît sèche et que les bords se relèvent de la poêle, retournez la crêpe 
            Laissez la deuxième face cuire quelques instants, puis transférez la crêpe dans une grande assiette",
)
articles_count += 1
system("clear")
puts "#{articles_count} articles created"
puts "|"+("█"*articles_count)+(" "*(articles_number-articles_count))+"|"


Article.create(
  nutritionist_id: 2,
  title: "Comment gérer les repas des fêtes de noël et du nouvel an ?",
  content: "Noël arrive à grand pas, suivi de près par le réveillon du nouvel an. Beaucoup d'entre nous vont, consciemment ou pas, sombrer dans les excès alimentaires. 
            Voici donc un petit guide de survie de fin d'année, qui vous donnera quelques pistes pour garder le contrôle lors de repas gargantuesques. Bien sûr, le but n'est pas de transformer vos repas de fête en régime restrictif, n'oubliez donc pas de vous faire plaisir ! Malgré tout, il est toujours préférable de se faire plaisir en conscience et en évitant quelques pièges.  
            Apéro ! 
            Vous savez que vous aurez sans doute largement de quoi satisfaire votre faim lors du repas. Faites donc preuve d'un peu de patience, et ne vous jetez pas sur les petits fours dès l'apéritif !  
            L'entrée 
            Si vous le pouvez, profitez de l'entrée pour avaler des fibres. Les fibres ralentiront l'assimilation des nutriments qui arriveront par la suite, réduisant ainsi l'impact de tout le repas sur votre glycémie et votre sécrétion d'insuline. A ce stade du repas, une salade verte est ce qui peut vous arriver de mieux.  
            Le plat 
            Difficile de donner un conseil particulier sur le plat, tant il peut différer d'un repas à l'autre. Faites vous plaisir, prenez le temps de mâcher et de savourer.  
            Quand vous n'avez plus faim ... 
            Quand vous n'avez plus faim, c'est un message de votre corps qui vous dit qu'il faut arrêter de manger. Alors, ne vous forcez pas à reprendre une part sous prétexte que c'est bon. Vous êtes là pour vous faire plaisir, pas pour traumatiser votre système digestif !  
            Le fromage 
            Est-ce bien nécessaire ? Si cela ne vous prive pas trop et si vous vous sentez capable de résister, faire l'impasse est sûrement la meilleure option.  
            Le dessert 
            Pour beaucoup, il est difficile d'envisager un repas de fête sans dessert. Ne vous privez donc pas, et profitez de l'instant, mais essayez tout de même de rester raisonnable sur les quantités !  
            Le jour d'après 
            Le lendemain, vous n'aurez peut-être pas très faim. Vous pouvez en profiter pour pratiquer un jeûne intermittent, c'est à dire une phase d'environ 16h sans ingurgiter la moindre calorie. Cette période de repos aidera votre système digestif à se remettre de ses émotions. Attention aux petits pièges comme le sucre dans le café, qui contient des calories et annule donc les bienfaits du jeûne intermittent.",
            )
articles_count += 1
system("clear")
puts "#{articles_count} articles created"
puts "|"+("█"*articles_count)+(" "*(articles_number-articles_count))+"|"


Article.create(
  nutritionist_id: 2,
  title: "Jeûne et détoxination",
  content: "Le jeûne est une interruption volontaire de l'alimentation. L'organisme est tout à fait apte à faire face à cette absence temporaire des apports alimentaires. En effet, si nous avons aujourd'hui un accès facile et virtuellement illimité à la nourriture, il n'en a pas toujours été de même au cours des millions d'années d'évolution qui ont conduit à l'être humain contemporain. 
            A l'état sauvage, aucune créature n'a l'assurance de trouver de quoi manger à sa faim tous les jours : nos organismes, comme ceux de tous les animaux, sont adaptés à l'absence temporaire de nourriture. Le jeûne constitue donc une approche tout à fait naturelle et cohérente avec la physiologie humaine.  
            Le mécanisme et les bienfaits du jeûne 
            Lors du jeûne, le système digestif est mis au repos. De ce fait, ses besoins énergétiques sont très fortement réduits. L'énergie qui lui est habituellement consacrée peut être mise à profit pour d'autres fonctions. L'organisme en tire partie pour se nettoyer et activer le mécanisme d'autolyse, qui compense l'absence de nourriture par le catabolisme des tissus les plus faibles et endommagés. Ces tissus peuvent alors être renouvelés par des cellules neuves. 
            Le jeûne permet ainsi d'améliorer de nombreux problèmes de santé comme par exemple les troubles digestifs et hépatiques, les problèmes articulaires, ou encore les désordres liés au surpoids. L'autolyse a besoin de temps pour opérer, et la durée du jeûne conditionne la profondeur de ce grand nettoyage.  
            Jeûne et crises de guérison 
            La destruction des anciens tissus génère des déchets, que l'organisme doit évacuer. Cela occasionne des crises de guérison, ou crises de détoxination, qui peuvent être éprouvantes. 
            Les émonctoires sont fortement sollicités et on constate notamment une mauvaise odeur provenant de la transpiration, et des urines chargées. Les symptômes de détoxination sont variés et dépendent des cas. Ils comptent par exemple communément des perturbations du sommeil, des maux de tête ou encore des nausées. 
            Les crises de détoxination peuvent être spectaculaires et très inquiétantes pour une personne non avertie, qui pourrait facilement croire que le jeûne la rend malade. Les crises de détoxination témoignent au contraire du nettoyage profond qui s'opère dans l'organisme, et montrent que le corps est en train de tirer parti du jeûne pour activer sa propre guérison.  
            Les contrindications au jeûne 
            Le jeûne ne convient malheureusement pas à tout le monde, et il existe des contrindications notamment en cas de maladie grave et avancée comme par exemple un cancer généralisé ou une sclérose en plaques avancée. Dans ce cas, l'organisme affaibli est incapable de tirer partie des bienfaits du jeûne, qui peut même s'avérer préjudiciable et dangereux. 
            Les contrindications sont variées et comptent aussi notamment le syndrome de Gilbert, la myopathie, le diabète de type 1, l'épilepsie, une maigreur excessive ou encore une addiction aux drogues. Un état de stress peut aussi motiver à reporter un jeûne.  
            Préparer et rompre le jeûne : descente et reprise alimentaire 
            Dans tous les cas, le jeûne nécessite une phase préparatoire de descente alimentaire progressive. Cette étape est particulièrement importante, et doit être menée avec soin. Cette phase préparatoire doit également faire l'objet d'une certaine attention, puisque les symptômes de détoxination peuvent commencer à apparaître avant l'arrêt total des apports alimentaires. La reprise alimentaire doit elle aussi être progressive pour permettre une remise en service en douceur du système digestif.",
            )
articles_count += 1
system("clear")
puts "#{articles_count} articles created"
puts "|"+("█"*articles_count)+(" "*(articles_number-articles_count))+"|"


Article.create(
  nutritionist_id: 3,
  title: "Les calories : amies ou ennemies ?",
  content: "Certains perçoivent les calories comme quelque chose de néfaste, qui fait grossir et qu'il faut donc éviter autant que possible. Cette vision est on ne peut plus réductrice.  
            Qu'est ce qu'une calorie ? 
            La calorie est une unité de mesure pratique d'une quantité d'énergie, à l'historique particulièrement chaotique. La définition initiale stipule que la calorie est la quantité de chaleur nécessaire pour élever d'un degré centigrade la température d'un kilogramme d'eau. Cette définition très imprécise occulte certains paramètres expérimentaux importants, comme la pression athmosphérique et la température initiale de l\'eau. Plus tard, la définition a été revue et la calorie est devenue la quantité de chaleur nécessaire pour élever d\'un degré centigrade la température d\'un gramme d\'eau. Si elle reste tout aussi imprécise, cette nouvelle définition change surtout l\'échelle d\'un facteur mille, conduisant à une confusion entre calorie (cal) et kilocalorie (kcal ou Cal) qui perdure encore communément de nos jours.  
            Une calorie vaut approximativement 4,18 joules (J). Le joule est l'unité énergétique officielle du Système International, cependant la calorie reste utilisée par des chimistes et thermiciens, et aussi bien sûr par les nutritionnistes et les diététiciens.   
            Calories et nutrition 
            Dans le monde de la nutrition, les calories représentent donc l'énergie contenue dans les aliments. Nous en avons eminemment besoin pour combler nos besoins énergétiques. Le point important, cependant, est que toutes les calories ne se valent pas sur le plan nutritionnel. En effet, cette mesure purement énergétique ne tient pas compte des différents types de macronutriments (glucides, lipides, protéines) et exclue totalement les micronutriments (minéraux, vitamines ...). Une calorie de pomme de terre frite et une calorie d'épinard cru sont très loin d'avoir la même valeur pour l'organisme.  
            Les calories vides 
            La notion de calorie vide se rapporte à un aliment ayant peu ou pas d'intérêt nutritionnel en dehors de sa seule valeur énergétique. On peut citer par exemple le cas extrême du sucre raffiné, qui ne contient ni fibres ni micronutriments, et dont l'index glycémique élevé tend à forcer l'organisme à stocker l'énergie sous forme de graisse, plutôt qu'à l'utiliser au mieux. Ce sont ces calories là qu'il convient d'éviter au maximum, au profit d'aliments sains et vivants. 
            Plutôt que de diaboliser les calories, il importe surtout de bien les choisir. Les calories, loin d'être mauvaises par essence, ne sont ni plus ni moins que notre source d'énergie. Bien sûr, il n'est pas question d'en absorber plus que ce dont nous avons besoin, au risque de prendre du poids inutilement. Cependant, avant de chercher à se rationner, il faut bien comprendre que la clé d'une alimentation saine réside plus dans la qualité que dans la quantité. Il convient donc surtout d'éviter au maximum les calories vides, au profit d'aliments naturels de qualité et aussi peu transformés que possible.",
            )
articles_count += 1
system("clear")
puts "#{articles_count} articles created"
puts "|"+("█"*articles_count)+(" "*(articles_number-articles_count))+"|"


Article.create(
  nutritionist_id: 3,
  title: "La place de l'alimentation",
  content: "A l'état sauvage, la préoccupation principale de toute créature est la survie. Trouver un endroit où se reposer à l'abri des prédateurs, et trouver de quoi combler ses besoins énergétiques. Si ces deux exigences sont satisfaites, la journée a été bonne et il y en aura une autre demain. 
            Il est éminemment nécessaire de rester aussi fort que possible, pour avoir l'avantage en cas de conflit, mais aussi pour tenir le coup face aux maladies et au froid de l'hiver. Tout le reste est secondaire.  
            De l'état sauvage à la captivité consentie 
            Les humains élevés en captivité que nous sommes, bercés par le confort moderne et une certaine illusion de sécurité, ont perdu l'échelle des choses. Pour beaucoup, la priorité absolue est d'avoir un travail et de ramener de l'argent dans le foyer. L'argent, cette abstraction humaine qui ne représente en rien la réalité du monde tangible, est devenu un facteur majeur de survie. Alors on travaille. 
            L'énergie n'est pas un problème : il y a des calories partout. Il n'y a rien d'autre à faire pour s'en procurer que de dégainer sa carte bleue. On n'a pas beaucoup de temps pour manger, mais il suffit d'aller acheter un plat préparé en barquette pendant la pause de midi, de le passer au four à micro-ondes, et on peut retourner travailler  
            Remettre l'alimentation à sa juste place 
            Le mode de vie moderne a remplacé les priorités primaires de notre survie, en tant qu'êtres vivants, par des abstractions créées de toutes pièces. Pourtant nos cellules ne se renouvellent pas avec de l'argent. Si l'alimentation n'est plus une priorité dans notre mode de vie, elle l'est toujours pour notre organisme. 
            Contrairement à certaines idées reçues, il n'est ni compliqué ni onéreux de bien se nourrir. Il faut en revanche y consacrer un peu de temps et ne pas se satisfaire des solutions rapides mais malsaines que nous propose l'industrie. Un peu de temps pour apprendre, comprendre ce qu'on mange, choisir en toute conscience, et aussi se préparer de bons petits plats. Remettre l'alimentation à sa juste place, en somme.",
            )
articles_count += 1
system("clear")
puts "#{articles_count} articles created"
puts "|"+("█"*articles_count)+(" "*(articles_number-articles_count))+"|"


Article.create(
  nutritionist_id: 4,
  title: "Zoom sur la banane",
  content: "Les bananes font partie des fruits les plus consommés à l’échelle mondiale, et constituent un aliment de base dans le mode alimentaire de certaines régions. 
            Les bananes sont issues de l’inflorescence du bananier, qui malgré sa taille pouvant atteindre quinze mètres, n’est pas un arbre mais une plante herbacée. Cette dernière nécessite un climat chaud et une irrigation abondante, et est cultivée dans l’ensemble de la zone tropicale du globe. 
            Le développement des fleurs femelles du bananier conduit à la formation des bananes. Contrairement aux bananes issues de variétés sauvages, les bananes cultivées et destinées à la consommation sont issues de cultivars stériles, et ne contiennent pour cette raison pas de pépins.  
            De nombreuses variétés 
            Dans nos contrées, la variété Cavendish domine très largement le marché, et constitue même la quasi-totalité des échanges commerciaux mondiaux. Elle fait partie de la famille des bananes fruits, ou bananes desserts, qui regroupe toutes les variétés de bananes sucrées. 
            Les bananes légumes, ou bananes à cuire, constituent une autre famille très consommée dans le monde. Sa plus illustre représentante est la banane plantain, riche en amidon et dont l’usage en cuisine se rapproche quelque peu de la pomme de terre. 
            Il existe également une troisième famille, plus anecdotique, appelée bananes à bière. Il s’agit de variétés petites et amères qui sont utilisées pour fabriquer du vin et de la bière par fermentation.  
            Choisir et consommer les bananes 
            Les bananes sont récoltées vertes. Le processus de mûrissement induit différentes transformations. La plus évidente est bien sûr le changement de couleur, qui passe par le jaune pour finalement aboutir à une teinte jaune tigrée de points bruns sombres. 
            Lorsque la banane mûrit, son amidon est transformé en glucides simples qui vont conférer au fruit son goût sucré. Les arômes se développent, et la banane devient plus digeste. Il est intéressant de noter que les personnes qui prétendent mal digérer les bananes les consomment très souvent lorsqu’elles sont jaunes, alors qu’elles ne sont pas encore mûres. Bien souvent, la solution à ces problèmes digestifs est simplement de laisser mûrir pleinement les bananes avant de les déguster. 
            Les bananes supportent très mal le froid. Une température inférieure à +12°C bloque le mûrissement et provoque un noircissement des fruits. Les bananes se gardent donc à température ambiante, et surtout pas au réfrigérateur. 
            La banane constitue un en-cas intéressant, facile à manger et à transporter puisqu’elle présente l’ultime raffinement d’être naturellement conditionnée en emballage individuel. Cependant la banane peut également être préparée de différentes manières. Grâce à sa richesse en fibres, elle apporte notamment une texture intéressante, très pratique par exemple pour donner une consistance crémeuse et homogène aux smoothies verts. 
            Un autre avantage de la banane est son prix très raisonnable, même lorsqu’elle est issue de l’agriculture biologique. Une bonne raison pour profiter des aliments de la meilleure qualité possible.  
            Intérêts nutritionnels de la banane 
            Très pauvre en lipides et relativement riche en sucres, la banane présente un index glycémique de 65 et apporte de l’énergie rapidement. La densité calorique est raisonnable, avec une centaine de kilocalories pour une banane d’environ 150g. 
            La banane est une source intéressante de différents minéraux et oligo-éléments : potassium, magnésium, phosphore, calcium, manganèse. Elle fournit aussi des vitamines, en particulier du groupe B. La banane est également riche en antioxydants1 et en tryptophane, un acide aminé précurseur de la sérotonine qui est une hormone apaisante. 
            La banane se trouve être particulièrement intéressante dans le cadre d’une pratique sportive. En effet, le potassium et le calcium sont impliqués dans la contraction musculaire. Les vitamines du groupe B sont quand à elles utiles au métabolisme énergétique. Les antioxydants sont eux aussi mis à profit pour contrer le stress oxydatif généré par l’activité physique. La banane est un fruit de choix à la fois avant et après l’entraînement.",
  )
articles_count += 1
system("clear")
puts "#{articles_count} articles created"
puts "|"+("█"*articles_count)+(" "*(articles_number-articles_count))+"|"


Article.create(
  nutritionist_id: 4,
  title: "L'ail, un superaliment bien de chez nous",
  content: "Bien connu de tous, l'ail est un condiment très facile à trouver dans nos contrées. Cette plante vivace au doux nom de Allium sativum fait partie de la même famille que l'oignon, l'échalotte, le poireau ou encore l'asperge. 
            Une autre facette de l'ail est qu'il est considéré comme une plante médicinale depuis des temps immémoriaux. La somme de ses propriétés le classe sans équivoque dans la prestigieuse catégorie des super-aliments.  
            Les vertus de l'ail 
            Tout d'abord, l'ail se distingue par sa richesse en micronutriments, notamment en vitamines B6 et C, manganèse, sélenium, germanium, calcium et phosphore. Certains oligoéléments comme le sélenium ou le germanium sont relativement rares, ce qui fait de l'ail une source particulièrement intéressante sur le plan nutritionnel.  
            L'ail contient des huiles essentielles et des composés souffrés aux propriétés execeptionnelles. L'allicine notamment, libérée lorsque les gousses sont écrasées ou hachées, se trouve être aussi la molécule responsable de l'odeur distinctive de l'ail.  
            Les antioxydants de l'ail 
            Riche en polyphénols, qui sont de puissants antioxydants, l'ail permet de lutter efficacement contre le stress oxydatif. L'ailline possède l'intéressantes propriété de capter le radical libre hydroxyle.  
            Ail et microbiote 
            L'ail contient de l'inuline, un prébiotique qui stimule le développement de bactéries bénéfiques du microbiote. Il aide ainsi à maintenir la bonne constitution et la bonne santé de la flore intestinale.  
            Un médicament naturel et proactif 
            Antibactérien, antiviral, antiseptique et antifongique, l'ail renforce le système immunitaire et se montre efficace pour lutter contre les maladies, notamment celles rencontrées communément en hiver comme le rhume ou la grippe.  
            Les propriétés anti-cancer de l'ail 
            Une analyse statistique basée sur cinq études1,2,3,4,5 met en évidence que la consommation quotidienne d'une gousse d'ail permet de réduire de moitié le risque de cancer du colon, de l'estomac et du rectum. D'autres formes de cancer, comme celui du cerveau ou de la gorge, pourraient être également favorablement impactés.  
            L'ail et le système cardiovasculaire 
            L'ail permet de réguler le cholestérol et les triglycérides sanguins. Il aide également à lutter contre l'hypertension artérielle, et par voie de conséquence contre les maladies cardiovasculaires. Par ailleurs, les propriétés anticoagulantes de l'ail fluidifient le sang, ce qui réduit le risque de trombose.  
            L'ultime protection 
            Un dernier avantage, à l'utilité plus marginale : l'ail est bien connu pour éloigner les vampires. Il est de notoriété publique que tous ceux qui suspendent des gousses dans leur maison ne sont pas souvent embêtés par les suceurs de sang !  
            Quelques inconvénients 
            L'inconvénient qui vient immédiatement à l'esprit au sujet de l'ail est bien sûr l'haleine conférée par ses composés souffrés. Cette odeur est toutefois assez facile à maitriser : manger une pomme se montre rapidement efficace. Il est aussi possible de croquer quelques clous de girofle ou quelques grains de café torréfié. Une tasse de thé vert après le repas est une autre alternative.  
            Un autre inconvénient, plus embêtant, est lié aux propriétés anticoagulantes de l'ail. Elles présentent un risque de saignements lorsque l'ail est associé à des médicaments antiagrégants plaquettaires. Il est aussi déconseillé de consommer de l'ail avant une opération chirurgicale.  
            Comment consommer l'ail 
            En raison de ses nombreuses vertus, de sa facilité d'utilisation et de sa grande disponiblité, l'ail peut être consommé quotidiennement à raison de quelques gousses par jour. L'idéal est de manger l'ail cru dégermé, une quinzaine de minutes après l'avoir écrasé ou haché. Ce petit temps de repos permet de favoriser l'action de l'enzyme aillinase. 
            Pour celles et ceux qui n'apprécieraient pas le goût prononcé de l'ail, une alternative existe sous la forme de gélules. Ces dernières permettent de profiter des bienfaits de l'ail sans le goût, et sans désagrément en terme d'haleine.",
  )
articles_count += 1
system("clear")
puts "#{articles_count} articles created"
puts "|"+("█"*articles_count)+(" "*(articles_number-articles_count))+"|"


Article.create(
  nutritionist_id: 5,
  title: "A la découverte du cerfeuil tubéreux",
  content: "Depuis quelques temps, les légumes anciens réapparaissent sur les étals. Panais, patisson, tobinambour ou encore rutabaga s'invitent à nouveau sur nos tables. Ces légumes, longtemps boudés, ont eu la chance de passer sous le radar de l'industrie et d'être épargnés par les ravages des OGM et de l'agriculture intensive. 
            Parmi eux, on trouve un tubercule encore assez peu connu : le cerfeuil tubéreux. Ce cousin de la carotte et du celeri se trouve être particulièrement intéressant sur le plan gustatif, et il ne fait aucun doute qu'il constituera pour beaucoup une belle découverte !  
            Chaerophyllum bulbosum 
            Le cerfeuil tubéreux, aussi appelé cerfeuil bulbeux, cerfeuil à bulbe ou chérophylle bulbeux, est une plante herbacée bisannuelle vivace originaire d'Europe centrale. Seule sa racine est commestible, les feuilles étant toxiques. Les tubercules présentent une forme cônique d'environ cinq centimètres de long et trois de large. Le cerfeuil tubéreux est malheureusement assez rare et onéreux, en raison d'une très faible productivité.  
            Valeurs nutritionnelles du cerfeuil tubéreux 
            Au moment où j'écris ces lignes, les études sur la composition nutritionnelle du cerfeuil tubéreux ne sont pas terminées. Il est donc impossible de fournir des données complètes et fiables à ce sujet. 
            Cependant, des travaux de recherche ont été menés au sujet de la composition en glucides de ce tubercule1. Il apparait que la teneur en amidon est très élevée lors de la récolte, avec 37% de masse sèche dont 76% d'amidon. Le cerfeuil tubéreux est conservé pendant deux mois au froid avant consommation, ce qui conduit à une modification partielle de sa composition en glucides. Au final, la matière sèche est composée à 35% d'amidon et à 25% de saccharose. On peut en déduire que le cerfeuil tubéreux, une fois apte à la consommation, contient environ 22,2g de glucides pour 100g, dont 9,3g de sucre.  
            Comment préparer le cerfeuil tubéreux 
            Le cerfeuil tubéreux offre une déliceuse et subtile saveur légèrement sucrée, à mi-chemin entre la pomme de terre et la chataigne. Le tubercule se consomme comme un légume, cru ou cuit. 
            Cru, il se prépare comme la carotte. Cuit, on préfèrera une cuisson modérée pour garder un peu de fermeté et pour éviter que la chair ne devienne farineuse. Un temps de cuisson de cinq à huit minutes, à la vapeur (toujours préférable) ou dans de l'eau bouillonnante salée, est suffisant.",
  )
articles_count += 1
system("clear")
puts "#{articles_count} articles created"
puts "|"+("█"*articles_count)+(" "*(articles_number-articles_count))+"|"


Article.create(
  nutritionist_id: 5,
  title: "Les mécanismes d'action de l'insuline",
  content: "L'insuline est une hormone produite par les cellules bêta des îlots de Langerhans du pancréas. Sa sécrétion est principalement conditionnée par le glucose sanguin, qui pénètre dans les cellules bêta et déclenche la libération de l'insuline dans le sang. La quantité d'insuline délivrée dépend de la glycémie. Les acides aminés, les acides gras et les corps cétoniques stimulent également la sécrétion d'insuline, dans une moindre mesure.  
            Le rôle de l'insuline sur le foie 
            L'insuline est libérée au niveau de la veine pancréatico-duodénale. Elle arrive au foie, où elle sera captée pour près de 50 %. Les cellules cibles du foie, les hépatocytes, réagissent à l'insuline au moyen de récepteurs extracellulaires. En effet, l'insuline ne pénètre pas dans les cellules. Lorsqu'ils sont stimulés, ces récepteurs génèrent des messagers secondaires à l'intérieur des cellules, qui activent les voies de transport du glucose ainsi que les enzymes nécessaires à son stockage. 
            Le glucose pénètre dans les hépatocytes et y est agrégé au niveau du cytosol, sous forme de glycogène, par réactions enzymatiques : c'est la glycogénogenèse. Le glycogène est un polymère très ramifié du glucose : une molécule de glycogène peut contenir jusqu'à 50000 molécules de glucose, liées entre elles par liaison glycosidique alpha 1,4 et alpha 1,6. L'utilisation du glucose par les hépatocytes, qui constituent de cette manière un stock énergétique conséquent, abaisse la glycémie. 
            Ce stock pourra être libéré ultérieurement pour augmenter la glycémie, à la demande du pancréas par l'intermédiaire du glucagon. Cette hormone, antagoniste à l'insuline, commande la glycogénolyse qui, au contraire de la glycogénogenèse, casse le glycogène en glucose et le libère dans le sang par diffusion facilité. Le mécanisme de glycogénolyse est inhibé en présence d'insuline.  
            Muscles et insuline 
            Après avoir atteint le foie, l'insuline restante est diffusée dans tout l'organisme par la circulation sanguine. Au niveau des muscles squelettiques, les myocytes réagissent à l'insuline d'une manière très similaire aux hépatocytes. Le glucose présent dans le sang pénètre dans les myocytes et y est stocké sous forme de glycogène, où il constitue une réserve locale d'énergie destinée à l'activité du muscle. Cependant, à l'inverse des hépatocytes, les myocytes ne réagissent pas au glucagon et ne peuvent pas libérer le glycogène dans le sang.  
            Insuline et stockage sous forme de graisse corporelle 
            Les adipocytes du tissus adipeux sont également sensibles à l'insuline, qui y stimule la lipogenèse. Le glucose y pénètre pour être converti en triglycérides, qui constituent un stock d'énergie sous forme de graisse corporelle. L'insuline inhibe la lipolyse, mécanisme qui permet aux adipocytes de libérer les triglycérides stockés sous forme d'acides gras non estérifiés.  
            Rôle de l'insuline dans le métabolisme des protéines 
            L'insuline joue aussi un rôle important dans le métabolisme des protéines. Elle favorise la pénétration des acides aminés dans les tissus, ainsi que leur utilisation par les cellules pour former leurs propres protéines (protéosynthèse). L'insuline inhibe également la conversion des acides aminés en glucose (néoglucogenèse), et favorise donc la conservation des protéines en présence d'autres sources énergétiques.  
            Insuline, cerveau et impact sur le comportement 
            Des études suggèrent que, outre son action hypoglycémiante et anabolisante, l'insuline pourrait agir également sur l'hypothalamus. Ce dernier, situé dans le cerveau, est en charge de nombreux processus de régulation au niveau nerveux, endocrinien et comportemental. Il a été montré que l'insuline, auparavant considérée comme inactive sur le système nerveux central, traverse la barrière hématoencéphalique par transport actif. 
            Ce mécanisme laisse légitimement supposer que l'insuline est utilisée au niveau cérébral. Les travaux de Bruning mettent en effet en évidence, chez la souris, l'implication de l'insuline dans le contrôle du poids et de la fonction reproductive. L'insuline, conjointement avec la leptine, semble agir sur l'hypothalamus au niveau neuronal. Ces mécanismes neuronaux et endocriniens sont toutefois encore mal compris. ",
  )
articles_count += 1
system("clear")
puts "#{articles_count} articles created"
puts "|"+("█"*articles_count)+(" "*(articles_number-articles_count))+"|"
############################################

puts ""
puts "Enjoy 🥃 !!!"
puts "----------->"