# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all

5.times do
  city = City.create!(
    name: Faker::Address.city)
end

12.times do
 doctor = Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: City.all.sample.id)
end

Specialty.create!(specialty: "med ge")
Specialty.create!(specialty: "dentiste")
Specialty.create!(specialty: "oncologue")
Specialty.create!(specialty: "pokedex")
Specialty.create!(specialty: "zythologie")


20.times do
  patient = Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: City.all.sample.id)
end
   
20.times do
  appointment = Appointment.create!(
  doctor: Doctor.all.sample,
  patient: Patient.all.sample,
  doctor_id: Doctor.all.sample.id,
  patient_id: Patient.all.sample.id,
  date: Faker::Time.forward(days: 5,  period: :evening, format: :long),
  city_id: City.all.sample.id)
end

20.times do
  join = DocToSpe.create!(doctor: Doctor.all.select(:id).sample, specialty: Specialty.all.select(:id).sample)
end