# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

100.times do
  patients = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.between(from: 3, to: 32))
end

100.times do 
  doctors = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code(state_abbreviation: 'CO'), city_id: Faker::Number.between(from: 3, to: 32))
end

100.times do
  appointments = Appointment.create!(date: Faker::Time.forward(days: 60), doctor_id: Faker::Number.between(from: 1, to: 100) , patient_id: Faker::Number.between(from: 1, to: 100),city_id: Faker::Number.between(from: 3, to: 32))
end

30.times do
  cities = City.create!(city: Faker::Address.city)
end


Specialty.create(specialty: "urologue")
Specialty.create(specialty: "proctologue")
Specialty.create(specialty: "naturopathe")
Specialty.create(specialty: "rebouteux")

300.times do
  matching_specialty_doctors = MatchingSpecialtyDoctor.create!(specialty_id: Faker::Number.between(from: 11, to: 14),doctor_id: Faker::Number.between(from: 1, to: 100))
end

