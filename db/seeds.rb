require 'faker'

Specialty.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
JointureSpe.destroy_all

spec = ["médecin","chirurgien-dentiste","pharmacien","sage-femme","biologiste médical","manipulateur d'électroradiologie médicale","chirurgien","gynécologue-obstétricien"]

20.times do
  d = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)

  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

  appointment = Appointment.create!(doctor: d, patient: patient, date: Faker::Date.between(from: '2020-09-23', to: '2021-09-25')) 

  city = City.create!(city_name: Faker::Address.city)

  spe = Specialty.create(specialty_name: spec[rand(spec.length)])

  join = JointureSpe.create(doctor: d,specialty: spe)
end