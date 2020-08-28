# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

conditions = ["covid", "common cold", "plague", "broken bone"]

10.times do |i|
  p = Patient.create(name: Faker::Name.name, condition: conditions.sample)
  d = Doctor.create(name: "DR. #{Faker::Name.last_name}", specialty: conditions.sample, treatment: Faker::Hacker.say_something_smart)

  if p.condition == d.specialty
    Appointment.create(doctor_id: d.id, patient_id: p.id, date: i.day.from_now.to_s)
  end
end

puts "seeded"

# appoinments we want to match pateints and doctors specailty
